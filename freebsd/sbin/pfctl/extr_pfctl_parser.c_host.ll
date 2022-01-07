; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid netmask '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"host: malloc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"host: strdup\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no IP address found for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @host(i8* %0) #0 {
  %2 = alloca %struct.node_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.node_host* null, %struct.node_host** %4, align 8
  store i32 1, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %60

15:                                               ; preds = %1
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @strtol(i8* %17, i8** %10, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 128
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = icmp eq i8* %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %26, %21, %15
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %36)
  store %struct.node_host* null, %struct.node_host** %2, align 8
  br label %118

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = sub nsw i64 %40, %42
  %44 = add nsw i64 %43, 1
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = sub nsw i64 %53, %55
  %57 = add nsw i64 %56, 1
  %58 = call i32 @strlcpy(i8* %50, i8* %51, i64 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %7, align 4
  store i32 %59, i32* %6, align 4
  br label %67

60:                                               ; preds = %1
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @strdup(i8* %61)
  store i8* %62, i8** %11, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  store i32 32, i32* %6, align 4
  store i32 128, i32* %7, align 4
  store i32 -1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call %struct.node_host* @host_if(i8* %71, i32 %72)
  store %struct.node_host* %73, %struct.node_host** %4, align 8
  %74 = icmp ne %struct.node_host* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %70, %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call %struct.node_host* @host_v4(i8* %80, i32 %81)
  store %struct.node_host* %82, %struct.node_host** %4, align 8
  %83 = icmp ne %struct.node_host* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %79, %76
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call %struct.node_host* @host_v6(i8* %89, i32 %90)
  store %struct.node_host* %91, %struct.node_host** %4, align 8
  %92 = icmp ne %struct.node_host* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %88, %85
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call %struct.node_host* @host_dns(i8* %98, i32 %99, i32 %100)
  store %struct.node_host* %101, %struct.node_host** %4, align 8
  %102 = icmp ne %struct.node_host* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %97, %94
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.node_host*, %struct.node_host** %4, align 8
  %108 = icmp eq %struct.node_host* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %109, %104
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @fprintf(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %114)
  store %struct.node_host* null, %struct.node_host** %2, align 8
  br label %118

116:                                              ; preds = %109
  %117 = load %struct.node_host*, %struct.node_host** %4, align 8
  store %struct.node_host* %117, %struct.node_host** %2, align 8
  br label %118

118:                                              ; preds = %116, %112, %34
  %119 = load %struct.node_host*, %struct.node_host** %2, align 8
  ret %struct.node_host* %119
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.node_host* @host_if(i8*, i32) #1

declare dso_local %struct.node_host* @host_v4(i8*, i32) #1

declare dso_local %struct.node_host* @host_v6(i8*, i32) #1

declare dso_local %struct.node_host* @host_dns(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
