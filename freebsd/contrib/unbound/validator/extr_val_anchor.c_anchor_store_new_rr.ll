; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_new_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_new_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32 }
%struct.val_anchors = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"adding trusted key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i32*, i64, i64)* @anchor_store_new_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @anchor_store_new_rr(%struct.val_anchors* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @sldns_wirerr_get_type(i32* %13, i64 %14, i64 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @sldns_wirerr_get_class(i32* %17, i64 %18, i64 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @sldns_wirerr_get_rdatawl(i32* %21, i64 %22, i64 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @sldns_wirerr_get_rdatalen(i32* %25, i64 %26, i64 %27)
  %29 = add nsw i64 %28, 2
  %30 = call %struct.trust_anchor* @anchor_store_new_key(%struct.val_anchors* %11, i32* %12, i32 %16, i32 %20, i32 %24, i64 %29)
  store %struct.trust_anchor* %30, %struct.trust_anchor** %10, align 8
  %31 = icmp ne %struct.trust_anchor* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %46

33:                                               ; preds = %4
  %34 = load i32, i32* @VERB_QUERY, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @sldns_wirerr_get_type(i32* %36, i64 %37, i64 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @sldns_wirerr_get_class(i32* %40, i64 %41, i64 %42)
  %44 = call i32 @log_nametypeclass(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %39, i32 %43)
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %45, %struct.trust_anchor** %5, align 8
  br label %46

46:                                               ; preds = %33, %32
  %47 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  ret %struct.trust_anchor* %47
}

declare dso_local %struct.trust_anchor* @anchor_store_new_key(%struct.val_anchors*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @sldns_wirerr_get_type(i32*, i64, i64) #1

declare dso_local i32 @sldns_wirerr_get_class(i32*, i64, i64) #1

declare dso_local i32 @sldns_wirerr_get_rdatawl(i32*, i64, i64) #1

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32*, i64, i64) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
