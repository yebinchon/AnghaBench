; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_nsec_at_apex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_nsec_at_apex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @nsec_at_apex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec_at_apex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @sldns_buffer_position(i32* %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @sldns_buffer_remaining(i32* %12)
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @sldns_buffer_skip(i32* %17, i32 4)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @sldns_buffer_read_u16(i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @sldns_buffer_remaining(i32* %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @sldns_buffer_set_position(i32* %26, i64 %27)
  store i32 0, i32* %2, align 4
  br label %85

29:                                               ; preds = %16
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @pkt_dname_len(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @sldns_buffer_set_position(i32* %34, i64 %35)
  store i32 0, i32* %2, align 4
  br label %85

37:                                               ; preds = %29
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @sldns_buffer_position(i32* %38)
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 4
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %37
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @sldns_buffer_position(i32* %47)
  %49 = add nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 4
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %52, %53
  %55 = icmp ugt i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @sldns_buffer_set_position(i32* %57, i64 %58)
  store i32 0, i32* %2, align 4
  br label %85

60:                                               ; preds = %46
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @sldns_buffer_read_u8(i32* %61)
  store i64 %62, i64* %6, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @sldns_buffer_read_u8(i32* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i64 @sldns_buffer_read_u8(i32* %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = icmp sge i64 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = and i64 %73, 2
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32*, i32** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @sldns_buffer_set_position(i32* %77, i64 %78)
  store i32 1, i32* %2, align 4
  br label %85

80:                                               ; preds = %72, %69, %60
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32*, i32** %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @sldns_buffer_set_position(i32* %82, i64 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %76, %56, %33, %25, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i64 @sldns_buffer_read_u8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
