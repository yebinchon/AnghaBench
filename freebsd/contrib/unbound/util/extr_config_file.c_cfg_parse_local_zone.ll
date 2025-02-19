; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_parse_local_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_parse_local_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"syntax error: too short: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"syntax error: expected zone type: %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"syntax error: bad zone name: %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nodefault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_parse_local_zone(%struct.config_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isspace(i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  br label %11

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %3, align 4
  br label %113

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @next_space_pos(i8* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %33
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  store i32 0, i32* %3, align 4
  br label %113

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp sgt i64 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32 0, i32* %3, align 4
  br label %113

55:                                               ; preds = %45
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlcpy(i8* %56, i8* %57, i32 256)
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @last_space_pos(i8* %65)
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %82, %55
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isspace(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %70, %67
  %81 = phi i1 [ false, %70 ], [ false, %67 ], [ %79, %75 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  br label %67

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  store i32 0, i32* %3, align 4
  br label %113

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.config_file*, %struct.config_file** %4, align 8
  %101 = getelementptr inbounds %struct.config_file, %struct.config_file* %100, i32 0, i32 1
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @strdup(i8* %102)
  %104 = call i32 @cfg_strlist_insert(i32* %101, i32 %103)
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %95
  %106 = load %struct.config_file*, %struct.config_file** %4, align 8
  %107 = getelementptr inbounds %struct.config_file, %struct.config_file* %106, i32 0, i32 0
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %109 = call i32 @strdup(i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @strdup(i8* %110)
  %112 = call i32 @cfg_str2list_insert(i32* %107, i32 %109, i32 %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %99, %92, %52, %42, %30
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i8* @next_space_pos(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @last_space_pos(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cfg_strlist_insert(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @cfg_str2list_insert(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
