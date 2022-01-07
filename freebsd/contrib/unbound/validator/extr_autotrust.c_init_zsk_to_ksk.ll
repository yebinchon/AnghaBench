; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_init_zsk_to_ksk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_init_zsk_to_ksk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { i64, i64, %struct.autr_ta*, i32, i32, i32 }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@AUTR_STATE_VALID = common dso_local global i64 0, align 8
@AUTR_STATE_ADDPEND = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"trust KSK from ZSK(config)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.trust_anchor*, i32*)* @init_zsk_to_ksk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_zsk_to_ksk(%struct.module_env* %0, %struct.trust_anchor* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.autr_ta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %5, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.autr_ta*, %struct.autr_ta** %14, align 8
  store %struct.autr_ta* %15, %struct.autr_ta** %8, align 8
  br label %16

16:                                               ; preds = %51, %3
  %17 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %18 = icmp ne %struct.autr_ta* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %21 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %24 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %27 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @sldns_wirerr_get_type(i32 %22, i32 %25, i32 %28)
  %30 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %19
  %33 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %34 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %39 = call i64 @ta_is_dnskey_sep(%struct.autr_ta* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %43 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AUTR_STATE_VALID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %41, %37, %32, %19
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %53 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %52, i32 0, i32 2
  %54 = load %struct.autr_ta*, %struct.autr_ta** %53, align 8
  store %struct.autr_ta* %54, %struct.autr_ta** %8, align 8
  br label %16

55:                                               ; preds = %16
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %96

59:                                               ; preds = %55
  %60 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %61 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.autr_ta*, %struct.autr_ta** %63, align 8
  store %struct.autr_ta* %64, %struct.autr_ta** %8, align 8
  br label %65

65:                                               ; preds = %90, %59
  %66 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %67 = icmp ne %struct.autr_ta* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %70 = call i64 @ta_is_dnskey_sep(%struct.autr_ta* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %74 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AUTR_STATE_ADDPEND, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %80 = load i32, i32* @VERB_ALGO, align 4
  %81 = call i32 @verbose_key(%struct.autr_ta* %79, i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.module_env*, %struct.module_env** %5, align 8
  %83 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* @AUTR_STATE_VALID, align 8
  %86 = call i32 @set_trustanchor_state(%struct.module_env* %82, %struct.autr_ta* %83, i32* %84, i64 %85)
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %78, %72, %68
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.autr_ta*, %struct.autr_ta** %8, align 8
  %92 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %91, i32 0, i32 2
  %93 = load %struct.autr_ta*, %struct.autr_ta** %92, align 8
  store %struct.autr_ta* %93, %struct.autr_ta** %8, align 8
  br label %65

94:                                               ; preds = %65
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %58
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @sldns_wirerr_get_type(i32, i32, i32) #1

declare dso_local i64 @ta_is_dnskey_sep(%struct.autr_ta*) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @set_trustanchor_state(%struct.module_env*, %struct.autr_ta*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
