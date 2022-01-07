; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_tdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_tdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_tdb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"\0A\09spi: 0x%08x rpl: %ju cur_bytes: %ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pfsync_print_tdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_print_tdb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfsync_tdb*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pfsync_tdb*
  store %struct.pfsync_tdb* %7, %struct.pfsync_tdb** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.pfsync_tdb*, %struct.pfsync_tdb** %5, align 8
  %10 = getelementptr inbounds %struct.pfsync_tdb, %struct.pfsync_tdb* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohl(i32 %11)
  %13 = load %struct.pfsync_tdb*, %struct.pfsync_tdb** %5, align 8
  %14 = getelementptr inbounds %struct.pfsync_tdb, %struct.pfsync_tdb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be64toh(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load %struct.pfsync_tdb*, %struct.pfsync_tdb** %5, align 8
  %19 = getelementptr inbounds %struct.pfsync_tdb, %struct.pfsync_tdb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be64toh(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @ND_PRINT(i32* %24)
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
