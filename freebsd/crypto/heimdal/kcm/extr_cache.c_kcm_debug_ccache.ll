; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_debug_ccache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_debug_ccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.kcm_creds*, %struct.TYPE_4__* }
%struct.kcm_creds = type { %struct.kcm_creds* }

@ccache_head = common dso_local global %struct.TYPE_4__* null, align 8
@KCM_FLAGS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cache %08x: empty slot\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"cache %08x: name %s refcnt %d flags %04x mode %04o uid %d gid %d client %s server %s ncreds %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcm_debug_ccache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kcm_creds*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccache_head, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  br label %9

9:                                                ; preds = %107, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %111

12:                                               ; preds = %9
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KCM_FLAGS_VALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 (i32, i8*, ...) @kcm_log(i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %107

21:                                               ; preds = %12
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i32 @KCM_ASSERT_VALID(%struct.TYPE_4__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  %26 = load %struct.kcm_creds*, %struct.kcm_creds** %25, align 8
  store %struct.kcm_creds* %26, %struct.kcm_creds** %7, align 8
  br label %27

27:                                               ; preds = %33, %21
  %28 = load %struct.kcm_creds*, %struct.kcm_creds** %7, align 8
  %29 = icmp ne %struct.kcm_creds* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load %struct.kcm_creds*, %struct.kcm_creds** %7, align 8
  %35 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %34, i32 0, i32 0
  %36 = load %struct.kcm_creds*, %struct.kcm_creds** %35, align 8
  store %struct.kcm_creds* %36, %struct.kcm_creds** %7, align 8
  br label %27

37:                                               ; preds = %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @krb5_unparse_name(i32 %43, i32* %46, i8** %4)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @krb5_unparse_name(i32 %54, i32* %57, i8** %5)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %59
  br label %84

82:                                               ; preds = %59
  %83 = load i8*, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %81 ], [ %83, %82 ]
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %91

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %88 ], [ %90, %89 ]
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i32, i8*, ...) @kcm_log(i32 7, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i8* %85, i8* %92, i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @free(i8* %98)
  br label %100

100:                                              ; preds = %97, %91
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %19
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 9
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %3, align 8
  br label %9

111:                                              ; preds = %9
  ret i32 0
}

declare dso_local i32 @kcm_log(i32, i8*, ...) #1

declare dso_local i32 @KCM_ASSERT_VALID(%struct.TYPE_4__*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
