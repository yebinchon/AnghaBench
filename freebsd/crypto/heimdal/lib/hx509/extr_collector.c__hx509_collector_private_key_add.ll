; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_private_key_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_private_key_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.private_key** }
%struct.private_key = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to copy AlgorithmIdentifier\00", align 1
@HX509_KEY_FORMAT_DER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to copy localKeyId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_collector_private_key_add(i32 %0, %struct.hx509_collector* %1, i32* %2, i64 %3, %struct.TYPE_7__* %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hx509_collector*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.private_key*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %17 = call %struct.private_key* @calloc(i32 1, i32 24)
  store %struct.private_key* %17, %struct.private_key** %14, align 8
  %18 = load %struct.private_key*, %struct.private_key** %14, align 8
  %19 = icmp eq %struct.private_key* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %7, align 4
  br label %129

22:                                               ; preds = %6
  %23 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %24 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.private_key**, %struct.private_key*** %25, align 8
  %27 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %28 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @realloc(%struct.private_key** %26, i32 %34)
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.private_key*, %struct.private_key** %14, align 8
  %40 = call i32 @free(%struct.private_key* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @hx509_set_error_string(i32 %41, i32 0, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %7, align 4
  br label %129

45:                                               ; preds = %22
  %46 = load i8*, i8** %15, align 8
  %47 = bitcast i8* %46 to %struct.private_key**
  %48 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %49 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store %struct.private_key** %47, %struct.private_key*** %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.private_key*, %struct.private_key** %14, align 8
  %53 = getelementptr inbounds %struct.private_key, %struct.private_key* %52, i32 0, i32 2
  %54 = call i32 @copy_AlgorithmIdentifier(i32* %51, i32* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @hx509_set_error_string(i32 %58, i32 0, i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %121

61:                                               ; preds = %45
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.private_key*, %struct.private_key** %14, align 8
  %67 = getelementptr inbounds %struct.private_key, %struct.private_key* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %85

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HX509_KEY_FORMAT_DER, align 4
  %78 = load %struct.private_key*, %struct.private_key** %14, align 8
  %79 = getelementptr inbounds %struct.private_key, %struct.private_key* %78, i32 0, i32 1
  %80 = call i32 @hx509_parse_private_key(i32 %69, i32* %70, i32 %73, i32 %76, i32 %77, i64* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %121

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = load %struct.private_key*, %struct.private_key** %14, align 8
  %91 = getelementptr inbounds %struct.private_key, %struct.private_key* %90, i32 0, i32 0
  %92 = call i32 @der_copy_octet_string(%struct.TYPE_7__* %89, i32* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @hx509_set_error_string(i32 %96, i32 0, i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %121

99:                                               ; preds = %88
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.private_key*, %struct.private_key** %14, align 8
  %102 = getelementptr inbounds %struct.private_key, %struct.private_key* %101, i32 0, i32 0
  %103 = call i32 @memset(i32* %102, i32 0, i32 4)
  br label %104

104:                                              ; preds = %100, %99
  %105 = load %struct.private_key*, %struct.private_key** %14, align 8
  %106 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %107 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.private_key**, %struct.private_key*** %108, align 8
  %110 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %111 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.private_key*, %struct.private_key** %109, i64 %114
  store %struct.private_key* %105, %struct.private_key** %115, align 8
  %116 = load %struct.hx509_collector*, %struct.hx509_collector** %9, align 8
  %117 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %104, %95, %83, %57
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.private_key*, %struct.private_key** %14, align 8
  %126 = call i32 @free_private_key(%struct.private_key* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %38, %20
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local %struct.private_key* @calloc(i32, i32) #1

declare dso_local i8* @realloc(%struct.private_key**, i32) #1

declare dso_local i32 @free(%struct.private_key*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @copy_AlgorithmIdentifier(i32*, i32*) #1

declare dso_local i32 @hx509_parse_private_key(i32, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @der_copy_octet_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free_private_key(%struct.private_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
