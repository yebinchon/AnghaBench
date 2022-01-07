; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_do_delegation.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_do_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }

@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32, i32*)* @do_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_delegation(i32 %0, i32 %1, i32 %2, %struct.TYPE_18__* %3, %struct.TYPE_19__* %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__, align 8
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %20 = call i32 @memset(%struct.TYPE_18__* %17, i32 0, i32 32)
  %21 = load i32*, i32** %14, align 8
  %22 = call i32 @krb5_data_zero(i32* %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %26 = call i64 @krb5_cc_get_principal(i32 %23, i32 %24, %struct.TYPE_20__** %25)
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* %19, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  br label %73

30:                                               ; preds = %8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KRB5_TGS_NAME, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @krb5_make_principal(i32 %31, %struct.TYPE_20__** %32, i32 %36, i32 %37, i32 %41, i32* null)
  store i64 %42, i64* %19, align 8
  %43 = load i64, i64* %19, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %73

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = call i32 @memset(%struct.TYPE_18__* %18, i32 0, i32 32)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %73

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @KDCOptions2int(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %18)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = call i64 @krb5_get_forwarded_creds(i32 %60, i32 %61, i32 %62, i32 %63, i32 %70, %struct.TYPE_18__* %17, i32* %71)
  store i64 %72, i64* %19, align 8
  br label %73

73:                                               ; preds = %59, %58, %45, %29
  %74 = load i64, i64* %19, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = xor i32 %77, -1
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %87

82:                                               ; preds = %73
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %76
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = icmp ne %struct.TYPE_20__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = call i32 @krb5_free_principal(i32 %92, %struct.TYPE_20__* %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = icmp ne %struct.TYPE_20__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = call i32 @krb5_free_principal(i32 %101, %struct.TYPE_20__* %103)
  br label %105

105:                                              ; preds = %100, %96
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, %struct.TYPE_20__**) #1

declare dso_local i64 @krb5_make_principal(i32, %struct.TYPE_20__**, i32, i32, i32, i32*) #1

declare dso_local i64 @krb5_get_forwarded_creds(i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @KDCOptions2int(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
