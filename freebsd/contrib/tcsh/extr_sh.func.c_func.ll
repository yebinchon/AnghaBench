; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.biltins = type { i32, i32, i32 (i32, %struct.command*)*, i32 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_TOOFEW = common dso_local global i32 0, align 4
@ERR_TOOMANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @func(%struct.command* %0, %struct.biltins* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.biltins*, align 8
  %5 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store %struct.biltins* %1, %struct.biltins** %4, align 8
  %6 = load %struct.command*, %struct.command** %3, align 8
  %7 = getelementptr inbounds %struct.command, %struct.command* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xechoit(i32 %8)
  %10 = load %struct.biltins*, %struct.biltins** %4, align 8
  %11 = getelementptr inbounds %struct.biltins, %struct.biltins* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @setname(i32 %12)
  %14 = load %struct.command*, %struct.command** %3, align 8
  %15 = getelementptr inbounds %struct.command, %struct.command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @blklen(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.biltins*, %struct.biltins** %4, align 8
  %21 = getelementptr inbounds %struct.biltins, %struct.biltins* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @ERR_NAME, align 4
  %26 = load i32, i32* @ERR_TOOFEW, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @stderror(i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.biltins*, %struct.biltins** %4, align 8
  %32 = getelementptr inbounds %struct.biltins, %struct.biltins* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @ERR_NAME, align 4
  %37 = load i32, i32* @ERR_TOOMANY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @stderror(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.biltins*, %struct.biltins** %4, align 8
  %42 = getelementptr inbounds %struct.biltins, %struct.biltins* %41, i32 0, i32 2
  %43 = load i32 (i32, %struct.command*)*, i32 (i32, %struct.command*)** %42, align 8
  %44 = load %struct.command*, %struct.command** %3, align 8
  %45 = getelementptr inbounds %struct.command, %struct.command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.command*, %struct.command** %3, align 8
  %48 = call i32 %43(i32 %46, %struct.command* %47)
  ret void
}

declare dso_local i32 @xechoit(i32) #1

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @blklen(i32) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
