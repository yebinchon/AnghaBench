; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_parse_server_match_testspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_parse_server_match_testspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_info = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"addr=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"host=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"user=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"laddr=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rdomain=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"lport=\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Invalid port '%s' in test mode specification %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Invalid test mode specification %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_server_match_testspec(%struct.connection_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.connection_info* %0, %struct.connection_info** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %97, %2
  %8 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %98

17:                                               ; preds = %15
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  %24 = call i8* @xstrdup(i8* %23)
  %25 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %26 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  br label %97

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = call i8* @xstrdup(i8* %33)
  %35 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %36 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  br label %96

37:                                               ; preds = %27
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  %44 = call i8* @xstrdup(i8* %43)
  %45 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %46 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  br label %95

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = call i8* @xstrdup(i8* %53)
  %55 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %56 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %94

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = call i8* @xstrdup(i8* %63)
  %65 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %66 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %93

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 6
  %74 = call i32 @a2port(i8* %73)
  %75 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %76 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %78 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %84, i8* %85)
  store i32 -1, i32* %3, align 4
  br label %99

87:                                               ; preds = %71
  br label %92

88:                                               ; preds = %67
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %3, align 4
  br label %99

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %61
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %41
  br label %96

96:                                               ; preds = %95, %31
  br label %97

97:                                               ; preds = %96, %21
  br label %7

98:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %88, %81
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @a2port(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
