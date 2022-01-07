; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat44_cfg_redir = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nat44_cfg_spool = type { i32, %struct.TYPE_2__ }

@REDIR_ADDR = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8***)* @setup_redir_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_redir_addr(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca %struct.nat44_cfg_redir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nat44_cfg_spool*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8*** %2, i8**** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.nat44_cfg_redir*
  store %struct.nat44_cfg_redir* %12, %struct.nat44_cfg_redir** %7, align 8
  %13 = load i32, i32* @REDIR_ADDR, align 4
  %14 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %15 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 16
  store i8* %17, i8** %4, align 8
  store i64 16, i64* %9, align 8
  %18 = load i8***, i8**** %6, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @strchr(i8* %20, i8 signext 44)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %3
  %24 = load i32, i32* @INADDR_NONE, align 4
  %25 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %26 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i8***, i8**** %6, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %35, %23
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to %struct.nat44_cfg_spool*
  store %struct.nat44_cfg_spool* %37, %struct.nat44_cfg_spool** %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 8
  store i64 %39, i64* %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %10, align 8
  %42 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %41, i32 0, i32 1
  %43 = call i32 @StrToAddr(i8* %40, %struct.TYPE_2__* %42)
  %44 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %10, align 8
  %45 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %47 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  store i8* %51, i8** %4, align 8
  %52 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %8, align 8
  br label %32

53:                                               ; preds = %32
  br label %61

54:                                               ; preds = %3
  %55 = load i8***, i8**** %6, align 8
  %56 = load i8**, i8*** %55, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %59 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %58, i32 0, i32 1
  %60 = call i32 @StrToAddr(i8* %57, %struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %54, %53
  %62 = load i8***, i8**** %6, align 8
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %62, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load i8***, i8**** %6, align 8
  %69 = load i8**, i8*** %68, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %72 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %71, i32 0, i32 0
  %73 = call i32 @StrToAddr(i8* %70, %struct.TYPE_2__* %72)
  %74 = load i8***, i8**** %6, align 8
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %74, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @StrToAddr(i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
