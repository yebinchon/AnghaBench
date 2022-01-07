; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_calculate_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_calculate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@HX509_VERIFY_MAX_DEPTH = common dso_local global i32 0, align 4
@HX509_PATH_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Path too long while bulding certificate chain\00", align 1
@HX509_CALCULATE_PATH_NO_ANCHOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_calculate_path(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load i32, i32* @HX509_VERIFY_MAX_DEPTH, align 4
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %23, %8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @_hx509_path_append(i32 %26, %struct.TYPE_5__* %27, i32 %28)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %9, align 4
  br label %126

34:                                               ; preds = %25
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @hx509_cert_ref(i32 %35)
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %81, %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i64 @certificate_is_anchor(i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @find_parent(i32 %45, i32 %46, i32 %47, %struct.TYPE_5__* %48, i32 %49, i32 %50, i32* %18)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @hx509_cert_free(i32 %52)
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %9, align 4
  br label %126

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @_hx509_path_append(i32 %59, %struct.TYPE_5__* %60, i32 %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %20, align 4
  store i32 %66, i32* %9, align 4
  br label %126

67:                                               ; preds = %58
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %19, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @hx509_cert_free(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @HX509_PATH_TOO_LONG, align 4
  %79 = call i32 @hx509_set_error_string(i32 %77, i32 0, i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @HX509_PATH_TOO_LONG, align 4
  store i32 %80, i32* %9, align 4
  br label %126

81:                                               ; preds = %67
  br label %37

82:                                               ; preds = %37
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @HX509_CALCULATE_PATH_NO_ANCHOR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ugt i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @certificate_is_anchor(i32 %93, i32 %94, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %92
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @hx509_cert_free(i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, -1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %107, %92, %87, %82
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @hx509_cert_free(i32 %124)
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %123, %74, %65, %56, %32
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @_hx509_path_append(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @hx509_cert_ref(i32) #1

declare dso_local i64 @certificate_is_anchor(i32, i32, i32) #1

declare dso_local i32 @find_parent(i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @hx509_cert_free(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
