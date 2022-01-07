; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c__pidfile_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c__pidfile_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidfh*, i32)* @_pidfile_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pidfile_remove(%struct.pidfh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidfh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pidfh* %0, %struct.pidfh** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %8 = call i32 @pidfile_verify(%struct.pidfh* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %15 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %18 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %21 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @funlinkat(i32 %16, i32 %19, i32 %22, i32 0)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @EDEADLK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %69

30:                                               ; preds = %25
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %34 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %38, %32
  %44 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %45 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %49, %43
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %59 = call i32 @free(%struct.pidfh* %58)
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.pidfh*, %struct.pidfh** %4, align 8
  %62 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %29, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pidfile_verify(%struct.pidfh*) #1

declare dso_local i32 @funlinkat(i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.pidfh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
