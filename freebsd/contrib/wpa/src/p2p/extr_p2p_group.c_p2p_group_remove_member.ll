; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_remove_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_remove_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32, %struct.p2p_group_member* }
%struct.p2p_group_member = type { %struct.p2p_group_member*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_group*, i32*)* @p2p_group_remove_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_group_remove_member(%struct.p2p_group* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.p2p_group_member*, align 8
  %7 = alloca %struct.p2p_group_member*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %9 = icmp eq %struct.p2p_group* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %13 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %12, i32 0, i32 1
  %14 = load %struct.p2p_group_member*, %struct.p2p_group_member** %13, align 8
  store %struct.p2p_group_member* %14, %struct.p2p_group_member** %6, align 8
  store %struct.p2p_group_member* null, %struct.p2p_group_member** %7, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %17 = icmp ne %struct.p2p_group_member* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %20 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i64 @os_memcmp(i32 %21, i32* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  store %struct.p2p_group_member* %28, %struct.p2p_group_member** %7, align 8
  %29 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %30 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %29, i32 0, i32 0
  %31 = load %struct.p2p_group_member*, %struct.p2p_group_member** %30, align 8
  store %struct.p2p_group_member* %31, %struct.p2p_group_member** %6, align 8
  br label %15

32:                                               ; preds = %26, %15
  %33 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %34 = icmp eq %struct.p2p_group_member* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %58

36:                                               ; preds = %32
  %37 = load %struct.p2p_group_member*, %struct.p2p_group_member** %7, align 8
  %38 = icmp ne %struct.p2p_group_member* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %41 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %40, i32 0, i32 0
  %42 = load %struct.p2p_group_member*, %struct.p2p_group_member** %41, align 8
  %43 = load %struct.p2p_group_member*, %struct.p2p_group_member** %7, align 8
  %44 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %43, i32 0, i32 0
  store %struct.p2p_group_member* %42, %struct.p2p_group_member** %44, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %47 = getelementptr inbounds %struct.p2p_group_member, %struct.p2p_group_member* %46, i32 0, i32 0
  %48 = load %struct.p2p_group_member*, %struct.p2p_group_member** %47, align 8
  %49 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %50 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %49, i32 0, i32 1
  store %struct.p2p_group_member* %48, %struct.p2p_group_member** %50, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.p2p_group_member*, %struct.p2p_group_member** %6, align 8
  %53 = call i32 @p2p_group_free_member(%struct.p2p_group_member* %52)
  %54 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %55 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %35, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @p2p_group_free_member(%struct.p2p_group_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
