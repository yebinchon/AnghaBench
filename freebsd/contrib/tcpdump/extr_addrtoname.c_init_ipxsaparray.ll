; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_ipxsaparray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_ipxsaparray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.hnamemem = type { i32, %struct.hnamemem*, i32* }

@ipxsap_db = common dso_local global %struct.TYPE_2__* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@ipxsaptable = common dso_local global %struct.hnamemem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_ipxsaparray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ipxsaparray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnamemem*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipxsap_db, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %63

14:                                               ; preds = %6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipxsap_db, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @htons(i32 %20)
  %22 = load i32, i32* @HASHNAMESIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hnamemem*, %struct.hnamemem** @ipxsaptable, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %25, i64 %27
  store %struct.hnamemem* %28, %struct.hnamemem** %4, align 8
  br label %29

29:                                               ; preds = %34, %14
  %30 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %31 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %36 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %35, i32 0, i32 1
  %37 = load %struct.hnamemem*, %struct.hnamemem** %36, align 8
  store %struct.hnamemem* %37, %struct.hnamemem** %4, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipxsap_db, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %46 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipxsap_db, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @htons(i32 %52)
  %54 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %55 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = call %struct.hnamemem* @newhnamemem(i32* %56)
  %58 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %59 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %58, i32 0, i32 1
  store %struct.hnamemem* %57, %struct.hnamemem** %59, align 8
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %6

63:                                               ; preds = %6
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.hnamemem* @newhnamemem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
