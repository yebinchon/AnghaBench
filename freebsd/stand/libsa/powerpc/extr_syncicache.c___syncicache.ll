; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/powerpc/extr_syncicache.c___syncicache.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/powerpc/extr_syncicache.c___syncicache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cacheline_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__syncicache(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @cacheline_size, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @getcachelinesize()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32, i32* @cacheline_size, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %4, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %32, %12
  %27 = load i8*, i8** %7, align 8
  call void asm sideeffect "dcbst 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i8* %27) #2, !srcloc !2
  %28 = load i32, i32* @cacheline_size, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @cacheline_size, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %26, label %37

37:                                               ; preds = %32
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %49, %37
  %44 = load i8*, i8** %7, align 8
  call void asm sideeffect "icbi 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i8* %44) #2, !srcloc !4
  %45 = load i32, i32* @cacheline_size, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @cacheline_size, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %43, label %54

54:                                               ; preds = %49
  call void asm sideeffect "sync; isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  ret void
}

declare dso_local i32 @getcachelinesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 435}
!3 = !{i32 540}
!4 = !{i32 600}
!5 = !{i32 706}
