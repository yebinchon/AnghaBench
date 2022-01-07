; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_sock_inet32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_sock_inet32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AUT_SOCKINET32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_sock_inet32(%struct.sockaddr_in* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @GET_TOKEN_AREA(i32* %7, i32* %8, i32 16)
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @AUT_SOCKINET32, align 4
  %16 = call i32 @ADD_U_CHAR(i32* %14, i32 %15)
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ADD_U_INT16(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 1
  %26 = call i32 @ADD_MEM(i32* %23, i32* %25, i32 4)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @ADD_MEM(i32* %27, i32* %30, i32 4)
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
