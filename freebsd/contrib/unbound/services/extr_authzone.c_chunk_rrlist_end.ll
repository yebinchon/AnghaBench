; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i64, %struct.auth_chunk*, i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_chunk*, i32)* @chunk_rrlist_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_rrlist_end(%struct.auth_chunk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_chunk*, align 8
  %5 = alloca i32, align 4
  store %struct.auth_chunk* %0, %struct.auth_chunk** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.auth_chunk*, %struct.auth_chunk** %4, align 8
  %8 = icmp ne %struct.auth_chunk* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.auth_chunk*, %struct.auth_chunk** %4, align 8
  %11 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %30

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.auth_chunk*, %struct.auth_chunk** %4, align 8
  %19 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @LDNS_ANCOUNT(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.auth_chunk*, %struct.auth_chunk** %4, align 8
  %27 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %26, i32 0, i32 1
  %28 = load %struct.auth_chunk*, %struct.auth_chunk** %27, align 8
  store %struct.auth_chunk* %28, %struct.auth_chunk** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
