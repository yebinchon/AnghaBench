; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_new.c_asn1_primitive_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_new.c_asn1_primitive_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (i32**, %struct.TYPE_16__*)*, i32 (i32**, %struct.TYPE_16__*)* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }

@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4
@ASN1_F_ASN1_PRIMITIVE_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_EMBED = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_MSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_16__*, i32)* @asn1_primitive_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_primitive_new(i32** %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32 (i32**, %struct.TYPE_16__*)*, i32 (i32**, %struct.TYPE_16__*)** %28, align 8
  %30 = icmp ne i32 (i32**, %struct.TYPE_16__*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32 (i32**, %struct.TYPE_16__*)*, i32 (i32**, %struct.TYPE_16__*)** %33, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = call i32 %34(i32** %35, %struct.TYPE_16__* %36)
  store i32 1, i32* %4, align 4
  br label %138

38:                                               ; preds = %26
  br label %52

39:                                               ; preds = %20
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32 (i32**, %struct.TYPE_16__*)*, i32 (i32**, %struct.TYPE_16__*)** %41, align 8
  %43 = icmp ne i32 (i32**, %struct.TYPE_16__*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32 (i32**, %struct.TYPE_16__*)*, i32 (i32**, %struct.TYPE_16__*)** %46, align 8
  %48 = load i32**, i32*** %5, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = call i32 %47(i32** %48, %struct.TYPE_16__* %49)
  store i32 %50, i32* %4, align 4
  br label %138

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %15
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 -1, i32* %10, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %95 [
    i32 128, label %66
    i32 130, label %71
    i32 129, label %77
    i32 131, label %79
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @NID_undef, align 4
  %68 = call i64 @OBJ_nid2obj(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32**, i32*** %5, align 8
  store i32* %69, i32** %70, align 8
  store i32 1, i32* %4, align 4
  br label %138

71:                                               ; preds = %64
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32**, i32*** %5, align 8
  %76 = bitcast i32** %75 to i32*
  store i32 %74, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %138

77:                                               ; preds = %64
  %78 = load i32**, i32*** %5, align 8
  store i32* inttoptr (i64 1 to i32*), i32** %78, align 8
  store i32 1, i32* %4, align 4
  br label %138

79:                                               ; preds = %64
  %80 = call %struct.TYPE_13__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %8, align 8
  %81 = icmp eq %struct.TYPE_13__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @ASN1_F_ASN1_PRIMITIVE_NEW, align 4
  %84 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %85 = call i32 @ASN1err(i32 %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %138

86:                                               ; preds = %79
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = bitcast %struct.TYPE_13__* %92 to i32*
  %94 = load i32**, i32*** %5, align 8
  store i32* %93, i32** %94, align 8
  br label %132

95:                                               ; preds = %64
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32**, i32*** %5, align 8
  %100 = bitcast i32** %99 to %struct.TYPE_14__**
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %9, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = call i32 @memset(%struct.TYPE_14__* %102, i32 0, i32 8)
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @ASN1_STRING_FLAG_EMBED, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %116

110:                                              ; preds = %95
  %111 = load i32, i32* %10, align 4
  %112 = call %struct.TYPE_14__* @ASN1_STRING_type_new(i32 %111)
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %9, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = bitcast %struct.TYPE_14__* %113 to i32*
  %115 = load i32**, i32*** %5, align 8
  store i32* %114, i32** %115, align 8
  br label %116

116:                                              ; preds = %110, %98
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @ASN1_STRING_FLAG_MSTRING, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %122, %116
  br label %132

132:                                              ; preds = %131, %86
  %133 = load i32**, i32*** %5, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 1, i32* %4, align 4
  br label %138

137:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %136, %82, %77, %71, %66, %44, %31, %14
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @OBJ_nid2obj(i32) #1

declare dso_local %struct.TYPE_13__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @ASN1_STRING_type_new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
