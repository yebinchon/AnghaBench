; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.group* @gr_scan(i8* %0) #0 {
  %2 = alloca %struct.group*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.group, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strdup(i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.group* null, %struct.group** %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @__gr_scan(i8* %12, %struct.group* %4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @free(i8* %16)
  store %struct.group* null, %struct.group** %2, align 8
  br label %31

18:                                               ; preds = %11
  %19 = call %struct.group* @gr_dup(%struct.group* %4)
  store %struct.group* %19, %struct.group** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @free(i8* %20)
  %22 = getelementptr inbounds %struct.group, %struct.group* %4, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.group, %struct.group* %4, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.group*, %struct.group** %6, align 8
  store %struct.group* %30, %struct.group** %2, align 8
  br label %31

31:                                               ; preds = %29, %15, %10
  %32 = load %struct.group*, %struct.group** %2, align 8
  ret %struct.group* %32
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @__gr_scan(i8*, %struct.group*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.group* @gr_dup(%struct.group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
