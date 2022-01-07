; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_create_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_s.c_create_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@KADM5_BAD_MASK = common dso_local global i64 0, align 8
@KADM5_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@KADM5_UNK_POLICY = common dso_local global i64 0, align 8
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*, i32, i32)* @create_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_principal(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_19__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i64, i64* @KADM5_BAD_MASK, align 8
  store i64 %24, i64* %7, align 8
  br label %117

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @KADM5_BAD_MASK, align 8
  store i64 %31, i64* %7, align 8
  br label %117

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @KADM5_POLICY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strcmp(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @KADM5_UNK_POLICY, align 8
  store i64 %44, i64* %7, align 8
  br label %117

45:                                               ; preds = %37, %32
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %47 = call i32 @memset(%struct.TYPE_19__* %46, i32 0, i32 12)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = call i64 @krb5_copy_principal(i32 %50, i32 %53, i32* %56)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %7, align 8
  br label %117

62:                                               ; preds = %45
  store i32* %15, i32** %16, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = call i64 @get_default(%struct.TYPE_17__* %63, i32 %66, i32* %67)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %74 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @_kadm5_setup_entry(%struct.TYPE_17__* %79, %struct.TYPE_19__* %80, i32 %83, %struct.TYPE_18__* %84, i32 %85, i32* %86, i32 %87)
  store i64 %88, i64* %14, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @kadm5_free_principal_ent(%struct.TYPE_17__* %92, i32* %93)
  br label %95

95:                                               ; preds = %91, %78
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %7, align 8
  br label %117

100:                                              ; preds = %95
  %101 = call i32 @time(i32* null)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = call i64 @krb5_copy_principal(i32 %108, i32 %111, i32* %115)
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %100, %98, %60, %43, %30, %23
  %118 = load i64, i64* %7, align 8
  ret i64 %118
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @krb5_copy_principal(i32, i32, i32*) #1

declare dso_local i64 @get_default(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i64 @_kadm5_setup_entry(%struct.TYPE_17__*, %struct.TYPE_19__*, i32, %struct.TYPE_18__*, i32, i32*, i32) #1

declare dso_local i32 @kadm5_free_principal_ent(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
