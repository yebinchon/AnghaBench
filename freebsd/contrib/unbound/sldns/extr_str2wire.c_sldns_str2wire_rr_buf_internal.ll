; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_rr_buf_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_rr_buf_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_RDFLEN = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64*, i64*, i32, i32*, i64, i32*, i64, i32)* @sldns_str2wire_rr_buf_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_str2wire_rr_buf_internal(i8* %0, i32* %1, i64* %2, i64* %3, i32 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64* %2, i64** %14, align 8
  store i64* %3, i64** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %32 = load i32, i32* @LDNS_MAX_RDFLEN, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i64 0, i64* %29, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @sldns_buffer_init_frm_data(i32* %30, i32* %38, i32 %40)
  %42 = load i64*, i64** %15, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %10
  store i64* %29, i64** %15, align 8
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i32*, i32** %13, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i64, i64* %18, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i64, i64* %20, align 8
  %53 = trunc i64 %34 to i32
  %54 = call i32 @rrinternal_get_owner(i32* %30, i32* %46, i64* %47, i64* %48, i32* %49, i64 %50, i32* %51, i64 %52, i8* %36, i32 %53)
  store i32 %54, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %22, align 4
  store i32 %57, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

58:                                               ; preds = %45
  %59 = trunc i64 %34 to i32
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @rrinternal_get_ttl(i32* %30, i8* %36, i32 %59, i32* %23, i32* %26, i32 %60)
  store i32 %61, i32* %22, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %22, align 4
  store i32 %64, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

65:                                               ; preds = %58
  %66 = trunc i64 %34 to i32
  %67 = call i32 @rrinternal_get_class(i32* %30, i8* %36, i32 %66, i32* %23, i32* %28)
  store i32 %67, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %22, align 4
  store i32 %70, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

71:                                               ; preds = %65
  %72 = trunc i64 %34 to i32
  %73 = call i32 @rrinternal_get_type(i32* %30, i8* %36, i32 %72, i32* %23, i32* %27)
  store i32 %73, i32* %22, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %22, align 4
  store i32 %76, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

77:                                               ; preds = %71
  %78 = load i32*, i32** %13, align 8
  %79 = load i64*, i64** %14, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %15, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %28, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @rrinternal_write_typeclassttl(i32* %30, i32* %78, i64 %80, i64 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %22, align 4
  store i32 %90, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

91:                                               ; preds = %77
  %92 = load i32, i32* %21, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i64*, i64** %15, align 8
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 4
  %98 = load i64*, i64** %14, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %99, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

100:                                              ; preds = %91
  %101 = trunc i64 %34 to i32
  %102 = load i32*, i32** %13, align 8
  %103 = load i64*, i64** %14, align 8
  %104 = load i64*, i64** %15, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %27, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = call i32 @rrinternal_parse_rdata(i32* %30, i8* %36, i32 %101, i32* %102, i64* %103, i64 %105, i32 %106, i32* %107, i64 %108)
  store i32 %109, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %22, align 4
  store i32 %112, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

113:                                              ; preds = %100
  %114 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %114, i32* %11, align 4
  store i32 1, i32* %31, align 4
  br label %115

115:                                              ; preds = %113, %111, %94, %89, %75, %69, %63, %56
  %116 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @rrinternal_get_owner(i32*, i32*, i64*, i64*, i32*, i64, i32*, i64, i8*, i32) #2

declare dso_local i32 @rrinternal_get_ttl(i32*, i8*, i32, i32*, i32*, i32) #2

declare dso_local i32 @rrinternal_get_class(i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @rrinternal_get_type(i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @rrinternal_write_typeclassttl(i32*, i32*, i64, i64, i32, i32, i32, i32) #2

declare dso_local i32 @rrinternal_parse_rdata(i32*, i8*, i32, i32*, i64*, i64, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
