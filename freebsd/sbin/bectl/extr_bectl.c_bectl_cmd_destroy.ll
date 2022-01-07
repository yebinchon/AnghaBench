; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"Fo\00", align 1
@BE_DESTROY_FORCE = common dso_local global i32 0, align 4
@BE_DESTROY_ORIGIN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bectl destroy: unknown option '-%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"bectl destroy: wrong number of arguments\0A\00", align 1
@BE_DESTROY_AUTOORIGIN = common dso_local global i32 0, align 4
@be = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"bectl destroy: leaving origin '%s' intact\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_destroy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @BE_MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %34 [
    i32 70, label %26
    i32 111, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @BE_DESTROY_FORCE, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* @optopt, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @usage(i32 0)
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %111

39:                                               ; preds = %30, %26
  br label %19

40:                                               ; preds = %19
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @usage(i32 0)
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %111

55:                                               ; preds = %40
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %55
  %64 = load i8*, i8** %8, align 8
  %65 = call i32* @strchr(i8* %64, i8 signext 64)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load i32, i32* @BE_DESTROY_AUTOORIGIN, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @be, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @be_root_concat(i32 %71, i8* %72, i8* %18)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %105

76:                                               ; preds = %67
  %77 = call i64 @be_prop_list_alloc(i32** %6)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %105

80:                                               ; preds = %76
  %81 = load i32, i32* @be, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @be_get_dataset_props(i32 %81, i8* %18, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @be_prop_list_free(i32* %86)
  br label %105

88:                                               ; preds = %80
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @nvlist_lookup_string(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @be, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @be_is_auto_snapshot_name(i32 %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %92, %88
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @be_prop_list_free(i32* %102)
  br label %104

104:                                              ; preds = %101, %63, %55
  br label %105

105:                                              ; preds = %104, %85, %79, %75
  %106 = load i32, i32* @be, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @be_destroy(i32 %106, i8* %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %111

111:                                              ; preds = %105, %51, %34
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @be_root_concat(i32, i8*, i8*) #2

declare dso_local i64 @be_prop_list_alloc(i32**) #2

declare dso_local i64 @be_get_dataset_props(i32, i8*, i32*) #2

declare dso_local i32 @be_prop_list_free(i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @be_is_auto_snapshot_name(i32, i8*) #2

declare dso_local i32 @be_destroy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
