; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*)* }

@mech = common dso_local global %struct.TYPE_2__* null, align 8
@app_data = common dso_local global i32* null, align 8
@sec_complete = common dso_local global i64 0, align 8
@data_prot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_end() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32 (i32*)*, i32 (i32*)** %5, align 8
  %7 = icmp ne i32 (i32*)* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = load i32*, i32** @app_data, align 8
  %13 = call i32 %11(i32* %12)
  br label %14

14:                                               ; preds = %8, %3
  %15 = load i32*, i32** @app_data, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** @app_data, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memset(i32* %18, i32 0, i32 %21)
  %23 = load i32*, i32** @app_data, align 8
  %24 = call i32 @free(i32* %23)
  store i32* null, i32** @app_data, align 8
  br label %25

25:                                               ; preds = %17, %14
  br label %26

26:                                               ; preds = %25, %0
  store i64 0, i64* @sec_complete, align 8
  store i32 0, i32* @data_prot, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
