; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_write_typeclassttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_write_typeclassttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i32, i32, i32, i32)* @rrinternal_write_typeclassttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_write_typeclassttl(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %8
  %21 = load i64, i64* %13, align 8
  %22 = add i64 %21, 4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @sldns_buffer_position(i32* %27)
  %29 = call i32 @RET_ERR(i32 %26, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %77

30:                                               ; preds = %20
  %31 = load i32*, i32** %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @sldns_write_uint16(i32* %33, i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @sldns_write_uint16(i32* %39, i32 %40)
  %42 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %42, i32* %9, align 4
  br label %77

43:                                               ; preds = %8
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 10
  %46 = load i64, i64* %12, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @sldns_buffer_position(i32* %50)
  %52 = call i32 @RET_ERR(i32 %49, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %77

53:                                               ; preds = %43
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @sldns_write_uint16(i32* %56, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @sldns_write_uint16(i32* %62, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @sldns_write_uint32(i32* %68, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = call i32 @sldns_write_uint16(i32* %74, i32 0)
  %76 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %53, %48, %30, %25
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
