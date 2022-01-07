; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwset = type { i32, i8*, i64, i32, %struct.trie*, i32, i64 }
%struct.trie = type { i64, i64, i64, i64, i64, i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kwsalloc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kwset*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i64 @malloc(i32 56)
  %6 = inttoptr i64 %5 to %struct.kwset*
  store %struct.kwset* %6, %struct.kwset** %4, align 8
  %7 = load %struct.kwset*, %struct.kwset** %4, align 8
  %8 = icmp ne %struct.kwset* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.kwset*, %struct.kwset** %4, align 8
  %12 = getelementptr inbounds %struct.kwset, %struct.kwset* %11, i32 0, i32 5
  %13 = call i32 @obstack_init(i32* %12)
  %14 = load %struct.kwset*, %struct.kwset** %4, align 8
  %15 = getelementptr inbounds %struct.kwset, %struct.kwset* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.kwset*, %struct.kwset** %4, align 8
  %17 = getelementptr inbounds %struct.kwset, %struct.kwset* %16, i32 0, i32 5
  %18 = call i64 @obstack_alloc(i32* %17, i32 56)
  %19 = inttoptr i64 %18 to %struct.trie*
  %20 = load %struct.kwset*, %struct.kwset** %4, align 8
  %21 = getelementptr inbounds %struct.kwset, %struct.kwset* %20, i32 0, i32 4
  store %struct.trie* %19, %struct.trie** %21, align 8
  %22 = load %struct.kwset*, %struct.kwset** %4, align 8
  %23 = getelementptr inbounds %struct.kwset, %struct.kwset* %22, i32 0, i32 4
  %24 = load %struct.trie*, %struct.trie** %23, align 8
  %25 = icmp ne %struct.trie* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %10
  %27 = load %struct.kwset*, %struct.kwset** %4, align 8
  %28 = ptrtoint %struct.kwset* %27 to i32
  %29 = call i32 @kwsfree(i32 %28)
  store i32 0, i32* %2, align 4
  br label %71

30:                                               ; preds = %10
  %31 = load %struct.kwset*, %struct.kwset** %4, align 8
  %32 = getelementptr inbounds %struct.kwset, %struct.kwset* %31, i32 0, i32 4
  %33 = load %struct.trie*, %struct.trie** %32, align 8
  %34 = getelementptr inbounds %struct.trie, %struct.trie* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.kwset*, %struct.kwset** %4, align 8
  %36 = getelementptr inbounds %struct.kwset, %struct.kwset* %35, i32 0, i32 4
  %37 = load %struct.trie*, %struct.trie** %36, align 8
  %38 = getelementptr inbounds %struct.trie, %struct.trie* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.kwset*, %struct.kwset** %4, align 8
  %40 = getelementptr inbounds %struct.kwset, %struct.kwset* %39, i32 0, i32 4
  %41 = load %struct.trie*, %struct.trie** %40, align 8
  %42 = getelementptr inbounds %struct.trie, %struct.trie* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.kwset*, %struct.kwset** %4, align 8
  %44 = getelementptr inbounds %struct.kwset, %struct.kwset* %43, i32 0, i32 4
  %45 = load %struct.trie*, %struct.trie** %44, align 8
  %46 = getelementptr inbounds %struct.trie, %struct.trie* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.kwset*, %struct.kwset** %4, align 8
  %48 = getelementptr inbounds %struct.kwset, %struct.kwset* %47, i32 0, i32 4
  %49 = load %struct.trie*, %struct.trie** %48, align 8
  %50 = getelementptr inbounds %struct.trie, %struct.trie* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.kwset*, %struct.kwset** %4, align 8
  %52 = getelementptr inbounds %struct.kwset, %struct.kwset* %51, i32 0, i32 4
  %53 = load %struct.trie*, %struct.trie** %52, align 8
  %54 = getelementptr inbounds %struct.trie, %struct.trie* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.kwset*, %struct.kwset** %4, align 8
  %56 = getelementptr inbounds %struct.kwset, %struct.kwset* %55, i32 0, i32 4
  %57 = load %struct.trie*, %struct.trie** %56, align 8
  %58 = getelementptr inbounds %struct.trie, %struct.trie* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @INT_MAX, align 4
  %60 = load %struct.kwset*, %struct.kwset** %4, align 8
  %61 = getelementptr inbounds %struct.kwset, %struct.kwset* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kwset*, %struct.kwset** %4, align 8
  %63 = getelementptr inbounds %struct.kwset, %struct.kwset* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.kwset*, %struct.kwset** %4, align 8
  %65 = getelementptr inbounds %struct.kwset, %struct.kwset* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = load %struct.kwset*, %struct.kwset** %4, align 8
  %68 = getelementptr inbounds %struct.kwset, %struct.kwset* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.kwset*, %struct.kwset** %4, align 8
  %70 = ptrtoint %struct.kwset* %69 to i32
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %30, %26, %9
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @kwsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
