; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_putenv.c_pam_putenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_putenv.c_pam_putenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@PAM_BUF_ERR = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_putenv(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 (...) @ENTER()
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  %16 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %17 = call i32 @RETURNC(i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @openpam_findenv(%struct.TYPE_4__* %19, i8* %20, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %18
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @PAM_BUF_ERR, align 4
  %35 = call i32 @RETURNC(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @FREE(i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  %52 = load i32, i32* @PAM_SUCCESS, align 4
  %53 = call i32 @RETURNC(i32 %52)
  br label %54

54:                                               ; preds = %36, %18
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = mul i64 %65, 2
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = mul i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8** @realloc(i8** %70, i32 %73)
  store i8** %74, i8*** %6, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = icmp eq i8** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @PAM_BUF_ERR, align 4
  %79 = call i32 @RETURNC(i32 %78)
  br label %80

80:                                               ; preds = %77, %62
  %81 = load i8**, i8*** %6, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8** %81, i8*** %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %54
  %88 = load i8*, i8** %5, align 8
  %89 = call i8* @strdup(i8* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* %89, i8** %96, align 8
  %97 = icmp eq i8* %89, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @PAM_BUF_ERR, align 4
  %100 = call i32 @RETURNC(i32 %99)
  br label %101

101:                                              ; preds = %98, %87
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i32, i32* @PAM_SUCCESS, align 4
  %107 = call i32 @RETURNC(i32 %106)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i32 @openpam_findenv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
