; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_cert_alg_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_cert_alg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@sldns_cert_algorithms = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_cert_alg_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @sldns_cert_algorithms, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.TYPE_3__* @sldns_lookup_by_name(i32 %10, i8* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @sldns_write_uint16(i32* %22, i32 %26)
  br label %44

28:                                               ; preds = %18
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @sldns_str2wire_int16_buf(i8* %29, i32* %30, i64* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @sldns_read_uint16(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i64*, i64** %7, align 8
  store i64 2, i64* %45, align 8
  %46 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %41, %35, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_3__* @sldns_lookup_by_name(i32, i8*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

declare dso_local i32 @sldns_str2wire_int16_buf(i8*, i32*, i64*) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
