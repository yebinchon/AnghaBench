; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_dnaddr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_dnaddr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, i8*, %struct.hnamemem* }
%struct.TYPE_6__ = type { i64 }

@dnaddrtable = common dso_local global %struct.hnamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dnaddr_string(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnamemem*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hnamemem*, %struct.hnamemem** @dnaddrtable, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HASHNAMESIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %7, i64 %12
  store %struct.hnamemem* %13, %struct.hnamemem** %6, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %16 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %15, i32 0, i32 2
  %17 = load %struct.hnamemem*, %struct.hnamemem** %16, align 8
  %18 = icmp ne %struct.hnamemem* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %21 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %27 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %62

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %32 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %31, i32 0, i32 2
  %33 = load %struct.hnamemem*, %struct.hnamemem** %32, align 8
  store %struct.hnamemem* %33, %struct.hnamemem** %6, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %37 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call %struct.hnamemem* @newhnamemem(%struct.TYPE_6__* %38)
  %40 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %41 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %40, i32 0, i32 2
  store %struct.hnamemem* %39, %struct.hnamemem** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @dnnum_string(%struct.TYPE_6__* %47, i32 %48)
  %50 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %51 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %58

52:                                               ; preds = %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @dnname_string(%struct.TYPE_6__* %53, i32 %54)
  %56 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %57 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %60 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %58, %25
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_6__*) #1

declare dso_local i8* @dnnum_string(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @dnname_string(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
