; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pkt_rcode2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pkt_rcode2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldns_pkt_rcode2str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32* @ldns_buffer_new(i32 10)
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %23

10:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @ldns_pkt_rcode2buffer_str(i32* %11, i32 %12)
  %14 = load i64, i64* @LDNS_STATUS_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @ldns_buffer_export2str(i32* %17)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ldns_buffer_free(i32* %20)
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %19, %9
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_pkt_rcode2buffer_str(i32*, i32) #1

declare dso_local i8* @ldns_buffer_export2str(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
