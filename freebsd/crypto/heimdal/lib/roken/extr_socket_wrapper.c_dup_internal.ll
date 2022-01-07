; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_dup_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_dup_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_info*, i32)* @dup_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dup_internal(%struct.socket_info* %0, i32 %1) #0 {
  %3 = alloca %struct.socket_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_info*, align 8
  store %struct.socket_info* %0, %struct.socket_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @calloc(i32 1, i32 80)
  %7 = inttoptr i64 %6 to %struct.socket_info*
  store %struct.socket_info* %7, %struct.socket_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %10 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %12 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %15 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %17 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %20 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %22 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %25 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %27 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %30 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %32 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %35 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %37 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %42 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %41, i32 0, i32 7
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strdup(i8* %43)
  %45 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %46 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %40, %2
  %48 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %49 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %54 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strdup(i8* %55)
  %57 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %58 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %61 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %64 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @sockaddr_dup(i8* %62, i32 %65)
  %67 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %68 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %70 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %73 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %75 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %78 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @sockaddr_dup(i8* %76, i32 %79)
  %81 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %82 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %84 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %87 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.socket_info*, %struct.socket_info** %3, align 8
  %89 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %92 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @sockets, align 4
  %94 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %95 = call i32 @SWRAP_DLIST_ADD(i32 %93, %struct.socket_info* %94)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @sockaddr_dup(i8*, i32) #1

declare dso_local i32 @SWRAP_DLIST_ADD(i32, %struct.socket_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
