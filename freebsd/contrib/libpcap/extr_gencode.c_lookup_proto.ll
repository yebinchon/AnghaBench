; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_lookup_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_lookup_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROTO_UNDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown ip proto '%s'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown ether proto '%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"esis\00", align 1
@ISO9542_ESIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"isis\00", align 1
@ISO10589_ISIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"clnp\00", align 1
@ISO8473_CLNP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown osi proto '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @lookup_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_proto(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %63 [
    i32 132, label %9
    i32 131, label %9
    i32 130, label %9
    i32 128, label %20
    i32 129, label %38
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @pcap_nametoproto(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PROTO_UNDEF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @bpf_error(i32* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %9
  br label %65

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @pcap_nametoeproto(i8* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PROTO_UNDEF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @pcap_nametollc(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PROTO_UNDEF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @bpf_error(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %20
  br label %65

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ISO9542_ESIS, align 4
  store i32 %43, i32* %7, align 4
  br label %62

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @ISO10589_ISIS, align 4
  store i32 %49, i32* %7, align 4
  br label %61

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ISO8473_CLNP, align 4
  store i32 %55, i32* %7, align 4
  br label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @bpf_error(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %54
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %42
  br label %65

63:                                               ; preds = %3
  %64 = load i32, i32* @PROTO_UNDEF, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %62, %37, %19
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @pcap_nametoproto(i8*) #1

declare dso_local i32 @bpf_error(i32*, i8*, i8*) #1

declare dso_local i32 @pcap_nametoeproto(i8*) #1

declare dso_local i32 @pcap_nametollc(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
