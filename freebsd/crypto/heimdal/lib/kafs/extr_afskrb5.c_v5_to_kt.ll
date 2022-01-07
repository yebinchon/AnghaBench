; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_v5_to_kt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_v5_to_kt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.kafs_token = type { i8*, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KAFS_RXKAD_2B_KVNO = common dso_local global i32 0, align 4
@EncryptedData = common dso_local global i32 0, align 4
@KRB5KRB_ERR_GENERIC = common dso_local global i32 0, align 4
@KAFS_RXKAD_K5_KVNO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.kafs_token*, i32)* @v5_to_kt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v5_to_kt(%struct.TYPE_16__* %0, i32 %1, %struct.kafs_token* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kafs_token*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.kafs_token* %2, %struct.kafs_token** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %17 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %16, i32 0, i32 0
  store i8* null, i8** %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %147

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load i32, i32* @KAFS_RXKAD_2B_KVNO, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @decode_Ticket(i32 %34, i64 %38, %struct.TYPE_17__* %12, i64* %15)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %147

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 5
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %147

49:                                               ; preds = %44
  %50 = load i32, i32* @EncryptedData, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ASN1_MALLOC_ENCODE(i32 %50, i8* %51, i64 %52, i32* %53, i64* %15, i32 %54)
  %56 = call i32 @free_Ticket(%struct.TYPE_17__* %12)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %147

61:                                               ; preds = %49
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* @KRB5KRB_ERR_GENERIC, align 4
  store i32 %68, i32* %5, align 4
  br label %147

69:                                               ; preds = %61
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %72 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %75 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %110

76:                                               ; preds = %26
  %77 = load i32, i32* @KAFS_RXKAD_K5_KVNO, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @malloc(i64 %81)
  %83 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %84 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %86 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* %5, align 4
  br label %147

91:                                               ; preds = %76
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %97 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %99 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %106 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i8* %100, i32 %104, i32 %108)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %91, %69
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %113 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %116 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @memcpy(i8* %118, i32 %123, i32 8)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %127 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %134 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %141 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 8
  %143 = load %struct.kafs_token*, %struct.kafs_token** %8, align 8
  %144 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %143, i32 0, i32 2
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @_kafs_fixup_viceid(%struct.TYPE_11__* %144, i32 %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %110, %89, %65, %59, %48, %42, %24
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @decode_Ticket(i32, i64, %struct.TYPE_17__*, i64*) #1

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i8*, i64, i32*, i64*, i32) #1

declare dso_local i32 @free_Ticket(%struct.TYPE_17__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @_kafs_fixup_viceid(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
