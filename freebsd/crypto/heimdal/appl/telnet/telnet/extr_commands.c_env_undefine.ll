; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_undefine.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_undefine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { %struct.env_lst*, %struct.env_lst*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_undefine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.env_lst*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.env_lst* @env_find(i8* %4)
  store %struct.env_lst* %5, %struct.env_lst** %3, align 8
  %6 = icmp ne %struct.env_lst* %5, null
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %9 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %12 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %16 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %21 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %24 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %26, align 8
  br label %27

27:                                               ; preds = %19, %7
  %28 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %29 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %28, i32 0, i32 1
  %30 = load %struct.env_lst*, %struct.env_lst** %29, align 8
  %31 = icmp ne %struct.env_lst* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %34 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %33, i32 0, i32 1
  %35 = load %struct.env_lst*, %struct.env_lst** %34, align 8
  %36 = call i32 @free(%struct.env_lst* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %39 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %38, i32 0, i32 0
  %40 = load %struct.env_lst*, %struct.env_lst** %39, align 8
  %41 = icmp ne %struct.env_lst* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %44 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %43, i32 0, i32 0
  %45 = load %struct.env_lst*, %struct.env_lst** %44, align 8
  %46 = call i32 @free(%struct.env_lst* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %49 = call i32 @free(%struct.env_lst* %48)
  br label %50

50:                                               ; preds = %47, %1
  ret void
}

declare dso_local %struct.env_lst* @env_find(i8*) #1

declare dso_local i32 @free(%struct.env_lst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
