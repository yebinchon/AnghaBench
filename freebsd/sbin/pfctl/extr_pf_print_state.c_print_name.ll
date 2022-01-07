; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pf_print_state.c_print_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pf_print_state.c_print_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@NI_NOFQDN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_name(%struct.pf_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.pf_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in6, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = trunc i64 %10 to i32
  %14 = call i32 @strlcpy(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %45 [
    i32 129, label %16
    i32 128, label %31
  ]

16:                                               ; preds = %2
  %17 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr_in6*
  %18 = call i32 @memset(%struct.sockaddr_in6* %17, i32 0, i32 24)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 24, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 129, i32* %20, align 4
  %21 = load %struct.pf_addr*, %struct.pf_addr** %3, align 8
  %22 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = trunc i64 %10 to i32
  %29 = load i32, i32* @NI_NOFQDN, align 4
  %30 = call i32 @getnameinfo(%struct.sockaddr* %25, i32 %27, i8* %12, i32 %28, i32* null, i32 0, i32 %29)
  br label %45

31:                                               ; preds = %2
  %32 = call i32 @memset(%struct.sockaddr_in6* %8, i32 0, i32 24)
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i32 24, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 3
  store i32 128, i32* %34, align 4
  %35 = load %struct.pf_addr*, %struct.pf_addr** %3, align 8
  %36 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = trunc i64 %10 to i32
  %43 = load i32, i32* @NI_NOFQDN, align 4
  %44 = call i32 @getnameinfo(%struct.sockaddr* %39, i32 %41, i8* %12, i32 %42, i32* null, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %2, %31, %16
  %46 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
