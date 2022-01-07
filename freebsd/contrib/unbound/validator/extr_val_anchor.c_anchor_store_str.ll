; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32 }
%struct.val_anchors = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"error parsing trust anchor %s: at %d: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trust_anchor* @anchor_store_str(%struct.val_anchors* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.trust_anchor*, align 8
  %5 = alloca %struct.val_anchors*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trust_anchor*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.val_anchors* %0, %struct.val_anchors** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @sldns_buffer_begin(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @sldns_buffer_capacity(i32* %15)
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @sldns_str2wire_rr_buf(i8* %17, i32* %18, i64* %10, i64* %11, i32 0, i32* null, i32 0, i32* null, i32 0)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @sldns_get_errorstr_parse(i32 %26)
  %28 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25, i32 %27)
  store %struct.trust_anchor* null, %struct.trust_anchor** %4, align 8
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.trust_anchor* @anchor_store_new_rr(%struct.val_anchors* %30, i32* %31, i64 %32, i64 %33)
  store %struct.trust_anchor* %34, %struct.trust_anchor** %8, align 8
  %35 = icmp ne %struct.trust_anchor* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.trust_anchor* null, %struct.trust_anchor** %4, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %8, align 8
  store %struct.trust_anchor* %39, %struct.trust_anchor** %4, align 8
  br label %40

40:                                               ; preds = %38, %36, %22
  %41 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  ret %struct.trust_anchor* %41
}

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @sldns_buffer_capacity(i32*) #1

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i64*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #1

declare dso_local i32 @sldns_get_errorstr_parse(i32) #1

declare dso_local %struct.trust_anchor* @anchor_store_new_rr(%struct.val_anchors*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
