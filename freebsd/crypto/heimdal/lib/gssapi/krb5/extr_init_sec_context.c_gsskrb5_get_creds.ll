; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_gsskrb5_get_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_gsskrb5_get_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@GSS_C_INDEFINITE = common dso_local global i64 0, align 8
@KEYTYPE_NULL = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32, %struct.TYPE_15__*, i32, i32, i64, i64*)* @gsskrb5_get_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gsskrb5_get_creds(i64* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3, i32 %4, i32 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_14__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @krb5_free_principal(i32 %28, i32* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = call i32 @krb5_free_creds(i32 %41, %struct.TYPE_16__* %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i64*, i64** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = call i64 @_gsskrb5_canon_name(i64* %49, i32 %50, i32 %51, i32 %54, i32 %55, i32** %57)
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %18, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i64, i64* %18, align 8
  store i64 %62, i64* %9, align 8
  br label %138

63:                                               ; preds = %48
  %64 = call i32 @memset(%struct.TYPE_14__* %20, i32 0, i32 32)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  store i32* %71, i32** %72, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %63
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* @GSS_C_INDEFINITE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @krb5_timeofday(i32 %80, i64* %22)
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* %16, align 8
  %84 = add nsw i64 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %90

87:                                               ; preds = %75, %63
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i32, i32* @KEYTYPE_NULL, align 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = call i64 @krb5_get_credentials(i32 %94, i32 0, i32 %95, %struct.TYPE_14__* %20, %struct.TYPE_16__** %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i64, i64* %19, align 8
  %103 = load i64*, i64** %10, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %104, i64* %9, align 8
  br label %138

105:                                              ; preds = %90
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @_gsskrb5_lifetime_left(i64* %114, i32 %115, i32 %118, i64* %21)
  store i64 %119, i64* %18, align 8
  %120 = load i64, i64* %18, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %105
  %123 = load i64, i64* %18, align 8
  store i64 %123, i64* %9, align 8
  br label %138

124:                                              ; preds = %105
  %125 = load i64, i64* %21, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i64*, i64** %10, align 8
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %129, i64* %9, align 8
  br label %138

130:                                              ; preds = %124
  %131 = load i64*, i64** %17, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i64, i64* %21, align 8
  %135 = load i64*, i64** %17, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %136, %127, %122, %101, %61
  %139 = load i64, i64* %9, align 8
  ret i64 %139
}

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_free_creds(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @_gsskrb5_canon_name(i64*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @krb5_timeofday(i32, i64*) #1

declare dso_local i64 @krb5_get_credentials(i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_16__**) #1

declare dso_local i64 @_gsskrb5_lifetime_left(i64*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
