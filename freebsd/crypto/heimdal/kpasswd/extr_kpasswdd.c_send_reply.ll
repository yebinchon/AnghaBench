; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_send_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.msghdr = type { i32, i32, i64, i32*, %struct.iovec*, i8* }
%struct.iovec = type { i8*, i32 }

@context = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_reply(i32 %0, %struct.sockaddr* %1, i32 %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca [3 x %struct.iovec], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  br label %24

23:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 6, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %13, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  store i32* %31, i32** %16, align 8
  %32 = load i32, i32* %13, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %16, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %16, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %37, 0
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %16, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %16, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %16, align 8
  store i32 0, i32* %42, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %16, align 8
  store i32 1, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %16, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %16, align 8
  store i32 %53, i32* %54, align 4
  %56 = call i32 @memset(%struct.msghdr* %11, i32 0, i32 40)
  %57 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %58 = bitcast %struct.sockaddr* %57 to i8*
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 5
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 0
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4
  store %struct.iovec* %62, %struct.iovec** %63, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i32 3, i32* %64, align 4
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %66 = bitcast i32* %65 to i8*
  %67 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 0
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 16
  %69 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 0
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 1
  store i32 6, i32* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %24
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 1
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 16
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 1
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %89

84:                                               ; preds = %24
  %85 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 1
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %85, i32 0, i32 0
  store i8* null, i8** %86, align 16
  %87 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 1
  %88 = getelementptr inbounds %struct.iovec, %struct.iovec* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %73
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 2
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 16
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %12, i64 0, i64 2
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @sendmsg(i32 %100, %struct.msghdr* %11, i32 0)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %89
  %104 = load i32, i32* @context, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @krb5_warn(i32 %104, i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %89
  ret void
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
