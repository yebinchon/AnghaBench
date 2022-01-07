; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_pkt_dname_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_pkt_dname_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMPRESS_PTRS = common dso_local global i32 0, align 4
@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pkt_dname_len(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %1, %79
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @sldns_buffer_remaining(i32* %10)
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  br label %89

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @sldns_buffer_read_u8(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @LABEL_IS_PTR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @sldns_buffer_remaining(i32* %21)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %89

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @sldns_buffer_read_u8(i32* %27)
  %29 = call i64 @PTR_OFFSET(i32 %26, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @MAX_COMPRESS_PTRS, align 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %89

35:                                               ; preds = %25
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @sldns_buffer_limit(i32* %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 0, i64* %2, align 8
  br label %89

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @sldns_buffer_position(i32* %45)
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @sldns_buffer_set_position(i32* %48, i64 %49)
  br label %79

51:                                               ; preds = %14
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 63
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 0, i64* %2, align 8
  br label %89

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i64 0, i64* %2, align 8
  br label %89

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %80

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @sldns_buffer_remaining(i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i64 0, i64* %2, align 8
  br label %89

75:                                               ; preds = %69
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @sldns_buffer_skip(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %47
  br label %9

80:                                               ; preds = %68
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %3, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @sldns_buffer_set_position(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i64, i64* %4, align 8
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %87, %74, %64, %54, %40, %34, %24, %13
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_read_u8(i32*) #1

declare dso_local i64 @LABEL_IS_PTR(i32) #1

declare dso_local i64 @PTR_OFFSET(i32, i32) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
