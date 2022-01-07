; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_donotq = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.addr_tree_node = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"duplicate donotquery address ignored.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_donotq*, %struct.sockaddr_storage*, i32, i32)* @donotq_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @donotq_insert(%struct.iter_donotq* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iter_donotq*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addr_tree_node*, align 8
  store %struct.iter_donotq* %0, %struct.iter_donotq** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iter_donotq*, %struct.iter_donotq** %6, align 8
  %12 = getelementptr inbounds %struct.iter_donotq, %struct.iter_donotq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @regional_alloc(i32 %13, i32 4)
  %15 = inttoptr i64 %14 to %struct.addr_tree_node*
  store %struct.addr_tree_node* %15, %struct.addr_tree_node** %10, align 8
  %16 = load %struct.addr_tree_node*, %struct.addr_tree_node** %10, align 8
  %17 = icmp ne %struct.addr_tree_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.iter_donotq*, %struct.iter_donotq** %6, align 8
  %21 = getelementptr inbounds %struct.iter_donotq, %struct.iter_donotq* %20, i32 0, i32 0
  %22 = load %struct.addr_tree_node*, %struct.addr_tree_node** %10, align 8
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @addr_tree_insert(i32* %21, %struct.addr_tree_node* %22, %struct.sockaddr_storage* %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @VERB_QUERY, align 4
  %30 = call i32 @verbose(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %19
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @addr_tree_insert(i32*, %struct.addr_tree_node*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
