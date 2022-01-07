; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_checkmntlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_checkmntlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.statfs* @checkmntlist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.statfs* null, %struct.statfs** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @parsehexfsid(i8* %5, i32* %4)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @FIND, align 4
  %10 = call %struct.statfs* @getmntentry(i8* null, i8* null, i32* %4, i32 %9)
  store %struct.statfs* %10, %struct.statfs** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.statfs*, %struct.statfs** %3, align 8
  %13 = icmp eq %struct.statfs* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @FIND, align 4
  %17 = call %struct.statfs* @getmntentry(i8* null, i8* %15, i32* null, i32 %16)
  store %struct.statfs* %17, %struct.statfs** %3, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.statfs*, %struct.statfs** %3, align 8
  %20 = icmp eq %struct.statfs* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @FIND, align 4
  %24 = call %struct.statfs* @getmntentry(i8* %22, i8* null, i32* null, i32 %23)
  store %struct.statfs* %24, %struct.statfs** %3, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.statfs*, %struct.statfs** %3, align 8
  ret %struct.statfs* %26
}

declare dso_local i64 @parsehexfsid(i8*, i32*) #1

declare dso_local %struct.statfs* @getmntentry(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
