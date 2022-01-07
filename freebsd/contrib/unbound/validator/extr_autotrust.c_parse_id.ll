; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32 }
%struct.val_anchors = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i8*)* @parse_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @parse_id(%struct.val_anchors* %0, i8* %1) #0 {
  %3 = alloca %struct.trust_anchor*, align 8
  %4 = alloca %struct.val_anchors*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 32)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.trust_anchor* null, %struct.trust_anchor** %3, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @sldns_str2wire_dname(i8* %20, i64* %10)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store %struct.trust_anchor* null, %struct.trust_anchor** %3, align 8
  br label %43

25:                                               ; preds = %17
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @parse_int(i8* %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @free(i32* %32)
  store %struct.trust_anchor* null, %struct.trust_anchor** %3, align 8
  br label %43

34:                                               ; preds = %25
  %35 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.trust_anchor* @autr_tp_create(%struct.val_anchors* %35, i32* %36, i64 %37, i32 %38)
  store %struct.trust_anchor* %39, %struct.trust_anchor** %6, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  store %struct.trust_anchor* %42, %struct.trust_anchor** %3, align 8
  br label %43

43:                                               ; preds = %34, %31, %24, %16
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  ret %struct.trust_anchor* %44
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @sldns_str2wire_dname(i8*, i64*) #1

declare dso_local i32 @parse_int(i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.trust_anchor* @autr_tp_create(%struct.val_anchors*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
