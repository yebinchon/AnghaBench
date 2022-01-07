; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dgetstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dgetstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { i32, %struct.directory* }

@STRdirstack = common dso_local global i32 0, align 4
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@blk_cleanup = common dso_local global i32 0, align 4
@shvhed = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dgetstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dgetstack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca %struct.directory*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @STRdirstack, align 4
  %6 = call i32* @adrof(i32 %5)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %57

9:                                                ; preds = %0
  %10 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 1), align 8
  store %struct.directory* %10, %struct.directory** %4, align 8
  br label %11

11:                                               ; preds = %15, %9
  %12 = load %struct.directory*, %struct.directory** %4, align 8
  %13 = icmp ne %struct.directory* %12, @dhead
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.directory*, %struct.directory** %4, align 8
  %17 = getelementptr inbounds %struct.directory, %struct.directory* %16, i32 0, i32 1
  %18 = load %struct.directory*, %struct.directory** %17, align 8
  store %struct.directory* %18, %struct.directory** %4, align 8
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %11

21:                                               ; preds = %11
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i32** @xmalloc(i32 %26)
  store i32** %27, i32*** %2, align 8
  store i32** %27, i32*** %3, align 8
  %28 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 1), align 8
  store %struct.directory* %28, %struct.directory** %4, align 8
  br label %29

29:                                               ; preds = %38, %21
  %30 = load %struct.directory*, %struct.directory** %4, align 8
  %31 = icmp ne %struct.directory* %30, @dhead
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.directory*, %struct.directory** %4, align 8
  %34 = getelementptr inbounds %struct.directory, %struct.directory* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @Strsave(i32 %35)
  %37 = load i32**, i32*** %3, align 8
  store i32* %36, i32** %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load %struct.directory*, %struct.directory** %4, align 8
  %40 = getelementptr inbounds %struct.directory, %struct.directory* %39, i32 0, i32 1
  %41 = load %struct.directory*, %struct.directory** %40, align 8
  store %struct.directory* %41, %struct.directory** %4, align 8
  %42 = load i32**, i32*** %3, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i32 1
  store i32** %43, i32*** %3, align 8
  br label %29

44:                                               ; preds = %29
  %45 = load i32**, i32*** %3, align 8
  store i32* null, i32** %45, align 8
  %46 = load i32**, i32*** %2, align 8
  %47 = load i32, i32* @blk_cleanup, align 4
  %48 = call i32 @cleanup_push(i32** %46, i32 %47)
  %49 = load i32, i32* @STRdirstack, align 4
  %50 = load i32**, i32*** %2, align 8
  %51 = load i32, i32* @VAR_READWRITE, align 4
  %52 = call i32 @setq(i32 %49, i32** %50, i32* @shvhed, i32 %51)
  %53 = load i32**, i32*** %2, align 8
  %54 = call i32 @cleanup_ignore(i32** %53)
  %55 = load i32**, i32*** %2, align 8
  %56 = call i32 @cleanup_until(i32** %55)
  br label %57

57:                                               ; preds = %44, %8
  ret void
}

declare dso_local i32* @adrof(i32) #1

declare dso_local i32** @xmalloc(i32) #1

declare dso_local i32* @Strsave(i32) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32 @setq(i32, i32**, i32*, i32) #1

declare dso_local i32 @cleanup_ignore(i32**) #1

declare dso_local i32 @cleanup_until(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
