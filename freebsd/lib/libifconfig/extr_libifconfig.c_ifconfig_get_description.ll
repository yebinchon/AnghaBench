; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.ifreq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@OTHER = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCGIFDESCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_get_description(%struct.TYPE_8__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 64, i64* %10, align 8
  %11 = call i32 @memset(%struct.ifreq* %8, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlcpy(i32 %13, i8* %14, i32 4)
  br label %16

16:                                               ; preds = %80, %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @reallocf(i8* %17, i64 %18)
  store i8* %19, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i8*, i8** @OTHER, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** @ENOMEM, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  store i32 -1, i32* %4, align 4
  br label %96

30:                                               ; preds = %16
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i32, i32* @AF_LOCAL, align 4
  %39 = load i32, i32* @SIOCGIFDESCR, align 4
  %40 = call i64 @ifconfig_ioctlwrap(%struct.TYPE_8__* %37, i32 %38, i32 %39, %struct.ifreq* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @free(i8* %43)
  store i32 -1, i32* %4, align 4
  br label %96

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @strdup(i8* %56)
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8**, i8*** %7, align 8
  %62 = icmp eq i8** %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i8*, i8** @OTHER, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @ENOMEM, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  store i32 -1, i32* %4, align 4
  br label %96

72:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %96

73:                                               ; preds = %51
  br label %85

74:                                               ; preds = %45
  %75 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  br label %16

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %73
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** @OTHER, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i8* null, i8** %95, align 8
  store i32 -1, i32* %4, align 4
  br label %96

96:                                               ; preds = %86, %72, %63, %42, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i64 @ifconfig_ioctlwrap(%struct.TYPE_8__*, i32, i32, %struct.ifreq*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
