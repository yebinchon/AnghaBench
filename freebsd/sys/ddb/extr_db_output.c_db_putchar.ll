; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbputchar_arg = type { i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @db_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_putchar(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dbputchar_arg*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.dbputchar_arg*
  store %struct.dbputchar_arg* %7, %struct.dbputchar_arg** %5, align 8
  %8 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %9 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @db_putc(i32 %13)
  br label %55

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = trunc i32 %16 to i8
  %18 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %19 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %19, align 8
  store i8 %17, i8* %20, align 1
  %22 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %23 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %27 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8 0, i8* %28, align 1
  %29 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %30 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %54

36:                                               ; preds = %33, %15
  %37 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %38 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @db_puts(i8* %39)
  %41 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %42 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %45 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %47 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %50 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dbputchar_arg*, %struct.dbputchar_arg** %5, align 8
  %52 = getelementptr inbounds %struct.dbputchar_arg, %struct.dbputchar_arg* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %36, %33
  br label %55

55:                                               ; preds = %54, %12
  ret void
}

declare dso_local i32 @db_putc(i32) #1

declare dso_local i32 @db_puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
