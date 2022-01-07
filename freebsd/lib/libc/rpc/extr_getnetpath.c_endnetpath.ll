; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetpath.c_endnetpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetpath.c_endnetpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpath_vars = type { i64, i32, %struct.netpath_vars*, %struct.netpath_vars*, %struct.netpath_vars*, i32* }
%struct.netpath_chain = type { i64, i32, %struct.netpath_chain*, %struct.netpath_chain*, %struct.netpath_chain*, i32* }

@NP_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @endnetpath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netpath_vars*, align 8
  %5 = alloca %struct.netpath_chain*, align 8
  %6 = alloca %struct.netpath_chain*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.netpath_vars*
  store %struct.netpath_vars* %8, %struct.netpath_vars** %4, align 8
  %9 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %10 = icmp eq %struct.netpath_vars* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %13 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NP_VALID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %21 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %26 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @endnetconfig(i32* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %31 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %30, i32 0, i32 4
  %32 = load %struct.netpath_vars*, %struct.netpath_vars** %31, align 8
  %33 = icmp ne %struct.netpath_vars* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %36 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %35, i32 0, i32 4
  %37 = load %struct.netpath_vars*, %struct.netpath_vars** %36, align 8
  %38 = call i32 @free(%struct.netpath_vars* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %41 = getelementptr inbounds %struct.netpath_vars, %struct.netpath_vars* %40, i32 0, i32 3
  %42 = load %struct.netpath_vars*, %struct.netpath_vars** %41, align 8
  %43 = bitcast %struct.netpath_vars* %42 to %struct.netpath_chain*
  store %struct.netpath_chain* %43, %struct.netpath_chain** %5, align 8
  br label %44

44:                                               ; preds = %52, %39
  %45 = load %struct.netpath_chain*, %struct.netpath_chain** %5, align 8
  %46 = icmp ne %struct.netpath_chain* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.netpath_chain*, %struct.netpath_chain** %5, align 8
  %49 = getelementptr inbounds %struct.netpath_chain, %struct.netpath_chain* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @freenetconfigent(i32 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load %struct.netpath_chain*, %struct.netpath_chain** %5, align 8
  store %struct.netpath_chain* %53, %struct.netpath_chain** %6, align 8
  %54 = load %struct.netpath_chain*, %struct.netpath_chain** %5, align 8
  %55 = getelementptr inbounds %struct.netpath_chain, %struct.netpath_chain* %54, i32 0, i32 2
  %56 = load %struct.netpath_chain*, %struct.netpath_chain** %55, align 8
  store %struct.netpath_chain* %56, %struct.netpath_chain** %5, align 8
  %57 = load %struct.netpath_chain*, %struct.netpath_chain** %6, align 8
  %58 = bitcast %struct.netpath_chain* %57 to %struct.netpath_vars*
  %59 = call i32 @free(%struct.netpath_vars* %58)
  br label %44

60:                                               ; preds = %44
  %61 = load %struct.netpath_vars*, %struct.netpath_vars** %4, align 8
  %62 = call i32 @free(%struct.netpath_vars* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @endnetconfig(i32*) #1

declare dso_local i32 @free(%struct.netpath_vars*) #1

declare dso_local i32 @freenetconfigent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
