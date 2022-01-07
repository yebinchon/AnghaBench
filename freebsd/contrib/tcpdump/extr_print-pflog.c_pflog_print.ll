; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pflog.c_pflog_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pflog.c_pflog_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfloghdr = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rule %u/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rule %u.%s.%u/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pf_reasons = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"unkn(%u)\00", align 1
@UID_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c" [uid %u]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c": %s %s on %s: \00", align 1
@pf_actions = common dso_local global i32 0, align 4
@pf_directions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pfloghdr*)* @pflog_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pflog_print(i32* %0, %struct.pfloghdr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pfloghdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pfloghdr* %1, %struct.pfloghdr** %4, align 8
  %7 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %8 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %7, i32 0, i32 7
  %9 = call i64 @EXTRACT_32BITS(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %11 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %10, i32 0, i32 6
  %12 = call i64 @EXTRACT_32BITS(i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @ND_PRINT(i32* %18)
  br label %29

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %24 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @ND_PRINT(i32* %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @pf_reasons, align 4
  %32 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %33 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  %39 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %40 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UID_MAX, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %47 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = zext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  br label %53

53:                                               ; preds = %44, %29
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @pf_actions, align 4
  %56 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %57 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tok2str(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @pf_directions, align 4
  %61 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %62 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tok2str(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.pfloghdr*, %struct.pfloghdr** %4, align 8
  %66 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @ND_PRINT(i32* %69)
  ret void
}

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
