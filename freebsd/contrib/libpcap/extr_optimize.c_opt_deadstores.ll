; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_deadstores.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_deadstores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.block = type { i32, i32, %struct.slist* }
%struct.slist = type { i32, %struct.slist* }
%struct.stmt = type { i32 }

@N_ATOMS = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.block*)* @opt_deadstores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_deadstores(%struct.TYPE_4__* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.slist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %9 = load i32, i32* @N_ATOMS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca %struct.stmt*, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = bitcast %struct.stmt** %12 to i8*
  %14 = mul nuw i64 8, %10
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i8* %13, i32 0, i32 %15)
  %17 = load %struct.block*, %struct.block** %4, align 8
  %18 = getelementptr inbounds %struct.block, %struct.block* %17, i32 0, i32 2
  %19 = load %struct.slist*, %struct.slist** %18, align 8
  store %struct.slist* %19, %struct.slist** %5, align 8
  br label %20

20:                                               ; preds = %28, %2
  %21 = load %struct.slist*, %struct.slist** %5, align 8
  %22 = icmp ne %struct.slist* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load %struct.slist*, %struct.slist** %5, align 8
  %26 = getelementptr inbounds %struct.slist, %struct.slist* %25, i32 0, i32 0
  %27 = call i32 @deadstmt(%struct.TYPE_4__* %24, i32* %26, %struct.stmt** %12)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.slist*, %struct.slist** %5, align 8
  %30 = getelementptr inbounds %struct.slist, %struct.slist* %29, i32 0, i32 1
  %31 = load %struct.slist*, %struct.slist** %30, align 8
  store %struct.slist* %31, %struct.slist** %5, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load %struct.block*, %struct.block** %4, align 8
  %35 = getelementptr inbounds %struct.block, %struct.block* %34, i32 0, i32 1
  %36 = call i32 @deadstmt(%struct.TYPE_4__* %33, i32* %35, %struct.stmt** %12)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %64, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @N_ATOMS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.stmt*, %struct.stmt** %12, i64 %43
  %45 = load %struct.stmt*, %struct.stmt** %44, align 8
  %46 = icmp ne %struct.stmt* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.block*, %struct.block** %4, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ATOMELEM(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @NOP, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.stmt*, %struct.stmt** %12, i64 %57
  %59 = load %struct.stmt*, %struct.stmt** %58, align 8
  %60 = getelementptr inbounds %struct.stmt, %struct.stmt* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %54, %47, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %37

67:                                               ; preds = %37
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @deadstmt(%struct.TYPE_4__*, i32*, %struct.stmt**) #2

declare dso_local i32 @ATOMELEM(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
