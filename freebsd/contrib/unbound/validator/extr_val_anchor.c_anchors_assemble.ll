; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchors_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i64, i64, i8*, i8* }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trust_anchor*)* @anchors_assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anchors_assemble(%struct.trust_anchor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trust_anchor*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %3, align 8
  %4 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %5 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %10 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %11 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %14 = call i8* @assemble_it(%struct.trust_anchor* %9, i64 %12, i32 %13)
  %15 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %16 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %44

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %25 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %30 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %34 = call i8* @assemble_it(%struct.trust_anchor* %29, i64 %32, i32 %33)
  %35 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %36 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  %38 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %23
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %21
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @assemble_it(%struct.trust_anchor*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
