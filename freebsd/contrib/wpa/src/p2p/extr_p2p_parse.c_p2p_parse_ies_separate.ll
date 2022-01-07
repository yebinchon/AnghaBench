; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_ies_separate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_ies_separate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_message = type { i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"P2P: Failed to parse P2P IE data\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"P2P: P2P IE data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_parse_ies_separate(i32* %0, i64 %1, i32* %2, i64 %3, %struct.p2p_message* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.p2p_message*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.p2p_message* %4, %struct.p2p_message** %11, align 8
  %12 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %13 = call i32 @os_memset(%struct.p2p_message* %12, i32 0, i32 16)
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i8* @wpabuf_alloc_copy(i32* %14, i64 %15)
  %17 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %18 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %20 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %25 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %28 = call i64 @p2p_parse_wps_ie(i8* %26, %struct.p2p_message* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %32 = call i32 @p2p_parse_free(%struct.p2p_message* %31)
  store i32 -1, i32* %6, align 4
  br label %67

33:                                               ; preds = %23, %5
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @wpabuf_alloc_copy(i32* %34, i64 %35)
  %37 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %38 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %40 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %45 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %48 = call i64 @p2p_parse_p2p_ie(i8* %46, %struct.p2p_message* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %54 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @MSG_MSGDUMP, align 4
  %59 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %60 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @wpa_hexdump_buf(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.p2p_message*, %struct.p2p_message** %11, align 8
  %65 = call i32 @p2p_parse_free(%struct.p2p_message* %64)
  store i32 -1, i32* %6, align 4
  br label %67

66:                                               ; preds = %43, %33
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %63, %30
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i8* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i64 @p2p_parse_wps_ie(i8*, %struct.p2p_message*) #1

declare dso_local i32 @p2p_parse_free(%struct.p2p_message*) #1

declare dso_local i64 @p2p_parse_p2p_ie(i8*, %struct.p2p_message*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
