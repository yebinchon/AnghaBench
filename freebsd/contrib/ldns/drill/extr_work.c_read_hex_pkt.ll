; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_read_hex_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_read_hex_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error parsing hex file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_hex_pkt(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %6, align 8
  %8 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %10 = call i32* @xmalloc(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @packetbuffromfile(i8* %11, i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @ldns_wire2pkt(i32** %6, i32* %17, i64 %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @xfree(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @LDNS_STATUS_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %2, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i8* @ldns_get_errorstr_by_id(i64 %30)
  %32 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32* null, i32** %2, align 8
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i64 @packetbuffromfile(i8*, i32*) #1

declare dso_local i64 @ldns_wire2pkt(i32**, i32*, i64) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ldns_get_errorstr_by_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
