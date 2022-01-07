; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/su/extr_su.c_dup_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/su/extr_su.c_dup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32*, i32*, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (%struct.passwd*)* @dup_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @dup_info(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  %5 = call %struct.passwd* @malloc(i32 40)
  store %struct.passwd* %5, %struct.passwd** %4, align 8
  %6 = load %struct.passwd*, %struct.passwd** %4, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i8* @strdup(i32* %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.passwd*, %struct.passwd** %4, align 8
  %16 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.passwd*, %struct.passwd** %3, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @strdup(i32* %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.passwd*, %struct.passwd** %4, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.passwd*, %struct.passwd** %3, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.passwd*, %struct.passwd** %4, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.passwd*, %struct.passwd** %3, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.passwd*, %struct.passwd** %4, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.passwd*, %struct.passwd** %3, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i8* @strdup(i32* %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.passwd*, %struct.passwd** %4, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.passwd*, %struct.passwd** %3, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @strdup(i32* %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.passwd*, %struct.passwd** %4, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.passwd*, %struct.passwd** %4, align 8
  %49 = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %9
  %53 = load %struct.passwd*, %struct.passwd** %4, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.passwd*, %struct.passwd** %4, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.passwd*, %struct.passwd** %4, align 8
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57, %52, %9
  %68 = load %struct.passwd*, %struct.passwd** %4, align 8
  %69 = call i32 @free_info(%struct.passwd* %68)
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %72

70:                                               ; preds = %62
  %71 = load %struct.passwd*, %struct.passwd** %4, align 8
  store %struct.passwd* %71, %struct.passwd** %2, align 8
  br label %72

72:                                               ; preds = %70, %67, %8
  %73 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %73
}

declare dso_local %struct.passwd* @malloc(i32) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32 @free_info(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
