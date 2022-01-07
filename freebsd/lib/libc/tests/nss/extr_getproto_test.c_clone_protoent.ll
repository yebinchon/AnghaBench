; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_clone_protoent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_clone_protoent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8*, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protoent*, %struct.protoent*)* @clone_protoent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_protoent(%struct.protoent* %0, %struct.protoent* %1) #0 {
  %3 = alloca %struct.protoent*, align 8
  %4 = alloca %struct.protoent*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.protoent* %0, %struct.protoent** %3, align 8
  store %struct.protoent* %1, %struct.protoent** %4, align 8
  %7 = load %struct.protoent*, %struct.protoent** %3, align 8
  %8 = icmp ne %struct.protoent* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.protoent*, %struct.protoent** %4, align 8
  %12 = icmp ne %struct.protoent* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.protoent*, %struct.protoent** %3, align 8
  %16 = call i32 @memset(%struct.protoent* %15, i32 0, i32 24)
  %17 = load %struct.protoent*, %struct.protoent** %4, align 8
  %18 = getelementptr inbounds %struct.protoent, %struct.protoent* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.protoent*, %struct.protoent** %4, align 8
  %23 = getelementptr inbounds %struct.protoent, %struct.protoent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = load %struct.protoent*, %struct.protoent** %3, align 8
  %27 = getelementptr inbounds %struct.protoent, %struct.protoent* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.protoent*, %struct.protoent** %3, align 8
  %29 = getelementptr inbounds %struct.protoent, %struct.protoent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %21, %2
  %35 = load %struct.protoent*, %struct.protoent** %4, align 8
  %36 = getelementptr inbounds %struct.protoent, %struct.protoent* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.protoent*, %struct.protoent** %3, align 8
  %39 = getelementptr inbounds %struct.protoent, %struct.protoent* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.protoent*, %struct.protoent** %4, align 8
  %41 = getelementptr inbounds %struct.protoent, %struct.protoent* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %113

44:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  %45 = load %struct.protoent*, %struct.protoent** %4, align 8
  %46 = getelementptr inbounds %struct.protoent, %struct.protoent* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  store i8** %47, i8*** %5, align 8
  br label %48

48:                                               ; preds = %55, %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %5, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8** @calloc(i32 %60, i32 8)
  %62 = load %struct.protoent*, %struct.protoent** %3, align 8
  %63 = getelementptr inbounds %struct.protoent, %struct.protoent* %62, i32 0, i32 1
  store i8** %61, i8*** %63, align 8
  %64 = load %struct.protoent*, %struct.protoent** %3, align 8
  %65 = getelementptr inbounds %struct.protoent, %struct.protoent* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = icmp ne i8** %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.protoent*, %struct.protoent** %4, align 8
  %71 = getelementptr inbounds %struct.protoent, %struct.protoent* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  store i8** %72, i8*** %5, align 8
  br label %73

73:                                               ; preds = %109, %58
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = load %struct.protoent*, %struct.protoent** %3, align 8
  %82 = getelementptr inbounds %struct.protoent, %struct.protoent* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load %struct.protoent*, %struct.protoent** %4, align 8
  %86 = getelementptr inbounds %struct.protoent, %struct.protoent* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = ptrtoint i8** %84 to i64
  %89 = ptrtoint i8** %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = getelementptr inbounds i8*, i8** %83, i64 %91
  store i8* %80, i8** %92, align 8
  %93 = load %struct.protoent*, %struct.protoent** %3, align 8
  %94 = getelementptr inbounds %struct.protoent, %struct.protoent* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = load %struct.protoent*, %struct.protoent** %4, align 8
  %98 = getelementptr inbounds %struct.protoent, %struct.protoent* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = ptrtoint i8** %96 to i64
  %101 = ptrtoint i8** %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = getelementptr inbounds i8*, i8** %95, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  br label %109

109:                                              ; preds = %77
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %5, align 8
  br label %73

112:                                              ; preds = %73
  br label %113

113:                                              ; preds = %112, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.protoent*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
