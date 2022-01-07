; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_get_AuthorityKeyIdentifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_get_AuthorityKeyIdentifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@choice_GeneralName_directoryName = common dso_local global i32 0, align 4
@choice_GeneralName_directoryName_rdnSequence = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_26__*, %struct.TYPE_19__*)* @get_AuthorityKeyIdentifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_AuthorityKeyIdentifier(i32 %0, %struct.TYPE_26__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__, align 4
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca %struct.TYPE_25__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %13 = call i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_26__* %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = call i8* @calloc(i32 1, i32 4)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = call i32 @free_SubjectKeyIdentifier(i32* %7)
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @hx509_set_error_string(i32 %28, i32 0, i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

31:                                               ; preds = %16
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @der_copy_octet_string(i32* %7, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = call i32 @free_SubjectKeyIdentifier(i32* %7)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @hx509_set_error_string(i32 %40, i32 0, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

43:                                               ; preds = %31
  br label %138

44:                                               ; preds = %3
  %45 = call i32 @memset(%struct.TYPE_25__* %10, i32 0, i32 24)
  %46 = call i32 @memset(%struct.TYPE_25__* %9, i32 0, i32 24)
  %47 = call i32 @memset(%struct.TYPE_25__* %11, i32 0, i32 24)
  %48 = call i8* @calloc(i32 1, i32 8)
  %49 = bitcast i8* %48 to %struct.TYPE_23__*
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = icmp eq %struct.TYPE_23__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @hx509_set_error_string(i32 %58, i32 0, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

61:                                               ; preds = %44
  %62 = call i8* @calloc(i32 1, i32 4)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hx509_set_error_string(i32 %72, i32 0, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

75:                                               ; preds = %61
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = call i32 @copy_Name(i32* %78, %struct.TYPE_25__* %11)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @hx509_set_error_string(i32 %83, i32 0, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

86:                                               ; preds = %75
  %87 = call i32 @memset(%struct.TYPE_25__* %10, i32 0, i32 24)
  %88 = load i32, i32* @choice_GeneralName_directoryName, align 4
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @choice_GeneralName_directoryName_rdnSequence, align 4
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = call i32 @add_GeneralNames(%struct.TYPE_25__* %9, %struct.TYPE_25__* %10)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @hx509_set_error_string(i32 %105, i32 0, i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

108:                                              ; preds = %86
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @der_copy_heim_integer(i32* %123, i32* %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %108
  %133 = load i32, i32* @ENOMEM, align 4
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @hx509_set_error_string(i32 %134, i32 0, i32 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %139

137:                                              ; preds = %108
  br label %138

138:                                              ; preds = %137, %43
  br label %139

139:                                              ; preds = %138, %132, %104, %82, %70, %56, %39, %25
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %144 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_19__* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_26__*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free_SubjectKeyIdentifier(i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @der_copy_octet_string(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @copy_Name(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @add_GeneralNames(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @der_copy_heim_integer(i32*, i32*) #1

declare dso_local i32 @free_AuthorityKeyIdentifier(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
