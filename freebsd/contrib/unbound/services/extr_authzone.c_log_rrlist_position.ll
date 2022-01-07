; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_log_rrlist_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_log_rrlist_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s at[%d] %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.auth_chunk*, i32*, i32, i64)* @log_rrlist_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_rrlist_position(i8* %0, %struct.auth_chunk* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.auth_chunk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [256 x i32], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca [32 x i8], align 16
  store i8* %0, i8** %6, align 8
  store %struct.auth_chunk* %1, %struct.auth_chunk** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %17 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %20 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sldns_buffer_init_frm_data(i32* %11, i32 %18, i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @sldns_buffer_begin(i32* %11)
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = call i32 @sldns_buffer_set_position(i32* %11, i64 %28)
  %30 = call i64 @pkt_dname_len(i32* %11)
  store i64 %30, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %54

33:                                               ; preds = %5
  %34 = load i64, i64* %12, align 8
  %35 = icmp uge i64 %34, 1024
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %54

37:                                               ; preds = %33
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @dname_pkt_copy(i32* %11, i32* %38, i32* %39)
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %43 = call i32 @dname_str(i32* %41, i8* %42)
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %46 = call i32 @sldns_wire2str_type_buf(i32 %44, i8* %45, i32 32)
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %53 = call i32 @verbose(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50, i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %37, %36, %32
  ret void
}

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32*) #1

declare dso_local i32 @dname_str(i32*, i8*) #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
