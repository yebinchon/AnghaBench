; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_copylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_copylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i8*, %struct.wordent*, %struct.wordent* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copylex(%struct.wordent* %0, %struct.wordent* %1) #0 {
  %3 = alloca %struct.wordent*, align 8
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %3, align 8
  store %struct.wordent* %1, %struct.wordent** %4, align 8
  %7 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %7, %struct.wordent** %5, align 8
  %8 = load %struct.wordent*, %struct.wordent** %4, align 8
  %9 = getelementptr inbounds %struct.wordent, %struct.wordent* %8, i32 0, i32 1
  %10 = load %struct.wordent*, %struct.wordent** %9, align 8
  store %struct.wordent* %10, %struct.wordent** %4, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = call %struct.wordent* @xmalloc(i32 24)
  store %struct.wordent* %12, %struct.wordent** %6, align 8
  %13 = load %struct.wordent*, %struct.wordent** %6, align 8
  %14 = getelementptr inbounds %struct.wordent, %struct.wordent* %13, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = load %struct.wordent*, %struct.wordent** %5, align 8
  %16 = load %struct.wordent*, %struct.wordent** %6, align 8
  %17 = getelementptr inbounds %struct.wordent, %struct.wordent* %16, i32 0, i32 2
  store %struct.wordent* %15, %struct.wordent** %17, align 8
  %18 = load %struct.wordent*, %struct.wordent** %3, align 8
  %19 = load %struct.wordent*, %struct.wordent** %6, align 8
  %20 = getelementptr inbounds %struct.wordent, %struct.wordent* %19, i32 0, i32 1
  store %struct.wordent* %18, %struct.wordent** %20, align 8
  %21 = load %struct.wordent*, %struct.wordent** %6, align 8
  %22 = load %struct.wordent*, %struct.wordent** %5, align 8
  %23 = getelementptr inbounds %struct.wordent, %struct.wordent* %22, i32 0, i32 1
  store %struct.wordent* %21, %struct.wordent** %23, align 8
  %24 = load %struct.wordent*, %struct.wordent** %6, align 8
  %25 = load %struct.wordent*, %struct.wordent** %3, align 8
  %26 = getelementptr inbounds %struct.wordent, %struct.wordent* %25, i32 0, i32 2
  store %struct.wordent* %24, %struct.wordent** %26, align 8
  %27 = load %struct.wordent*, %struct.wordent** %6, align 8
  store %struct.wordent* %27, %struct.wordent** %5, align 8
  %28 = load %struct.wordent*, %struct.wordent** %4, align 8
  %29 = getelementptr inbounds %struct.wordent, %struct.wordent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @Strsave(i8* %30)
  %32 = load %struct.wordent*, %struct.wordent** %5, align 8
  %33 = getelementptr inbounds %struct.wordent, %struct.wordent* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wordent*, %struct.wordent** %4, align 8
  %35 = getelementptr inbounds %struct.wordent, %struct.wordent* %34, i32 0, i32 1
  %36 = load %struct.wordent*, %struct.wordent** %35, align 8
  store %struct.wordent* %36, %struct.wordent** %4, align 8
  br label %37

37:                                               ; preds = %11
  %38 = load %struct.wordent*, %struct.wordent** %5, align 8
  %39 = getelementptr inbounds %struct.wordent, %struct.wordent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %11, label %45

45:                                               ; preds = %37
  ret void
}

declare dso_local %struct.wordent* @xmalloc(i32) #1

declare dso_local i8* @Strsave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
