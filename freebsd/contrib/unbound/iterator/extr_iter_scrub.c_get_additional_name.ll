; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_get_additional_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_get_additional_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i32 }
%struct.rr_parse = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_parse*, %struct.rr_parse*, i32**, i64*, i32*)* @get_additional_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_additional_name(%struct.rrset_parse* %0, %struct.rr_parse* %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rrset_parse*, align 8
  %8 = alloca %struct.rr_parse*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.rrset_parse* %0, %struct.rrset_parse** %7, align 8
  store %struct.rr_parse* %1, %struct.rr_parse** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.rrset_parse*, %struct.rrset_parse** %7, align 8
  %16 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 134, label %18
    i32 133, label %18
    i32 132, label %18
    i32 129, label %18
    i32 131, label %19
    i32 135, label %19
    i32 128, label %20
    i32 130, label %21
  ]

18:                                               ; preds = %5, %5, %5, %5
  store i64 0, i64* %12, align 8
  br label %23

19:                                               ; preds = %5, %5
  store i64 2, i64* %12, align 8
  br label %23

20:                                               ; preds = %5
  store i64 6, i64* %12, align 8
  br label %23

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %66

23:                                               ; preds = %20, %19, %18
  %24 = load %struct.rr_parse*, %struct.rr_parse** %8, align 8
  %25 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = call i64 @sldns_read_uint16(i32* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, 1
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %66

34:                                               ; preds = %23
  %35 = load %struct.rr_parse*, %struct.rr_parse** %8, align 8
  %36 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32**, i32*** %9, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @sldns_buffer_position(i32* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @sldns_buffer_begin(i32* %48)
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = call i32 @sldns_buffer_set_position(i32* %45, i64 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @pkt_dname_len(i32* %55)
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @sldns_buffer_set_position(i32* %58, i64 %59)
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %66

65:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %64, %33, %22, %21
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
