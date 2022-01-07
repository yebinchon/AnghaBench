; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"e:r\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"bectl create: unknown option '-%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"bectl create: wrong number of arguments\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to create a snapshot '%s' of '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create bootenv %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to create bootenv %s from snapshot %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @BE_MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %34, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %29 [
    i32 101, label %26
    i32 114, label %28
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %10, align 8
  br label %34

28:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @optopt, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @usage(i32 0)
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %126

34:                                               ; preds = %28, %26
  br label %19

35:                                               ; preds = %19
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @usage(i32 0)
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %126

50:                                               ; preds = %35
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  store i32 128, i32* %11, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 64)
  store i8* %54, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  store i8 0, i8* %57, align 1
  %59 = load i32, i32* @be, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @be_snapshot(i32 %59, i8* %60, i8* %61, i32 %62, i8* null)
  store i32 %63, i32* %11, align 4
  br label %99

64:                                               ; preds = %50
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @be, align 4
  %69 = load i32, i32* @be, align 4
  %70 = call i8* @be_active_path(i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @be_snapshot(i32 %68, i8* %70, i8* null, i32 %71, i8* %18)
  store i32 %72, i32* %11, align 4
  br label %87

73:                                               ; preds = %64
  %74 = load i8*, i8** %10, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 64)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = trunc i64 %16 to i32
  %80 = call i32 @strlcpy(i8* %18, i8* %78, i32 %79)
  br label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @be, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @be_snapshot(i32 %82, i8* %83, i8* null, i32 %84, i8* %18)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 128
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* @be, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  %97 = call i32 @be_create_depth(i32 %91, i8* %92, i8* %18, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98, %56
  %100 = load i32, i32* %11, align 4
  switch i32 %100, label %102 [
    i32 128, label %101
  ]

101:                                              ; preds = %99
  br label %124

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %108)
  br label %123

110:                                              ; preds = %102
  %111 = load i8*, i8** %10, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @stderr, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %122

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %117, %113
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %126

126:                                              ; preds = %124, %46, %29
  %127 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @be_snapshot(i32, i8*, i8*, i32, i8*) #2

declare dso_local i8* @be_active_path(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @be_create_depth(i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
