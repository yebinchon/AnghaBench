; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_marshal_new_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_marshal_new_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.audata = type { i32, i32 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"auth_none.c - Fatal marshalling problem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @marshal_new_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marshal_new_auth(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.audata*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* %3, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_4__* %10)
  store %struct.audata* %11, %struct.audata** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.audata*, %struct.audata** %5, align 8
  %14 = getelementptr inbounds %struct.audata, %struct.audata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %17 = load i32, i32* @XDR_ENCODE, align 4
  %18 = call i32 @xdrmem_create(i32* %12, i32 %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @xdr_opaque_auth(i32* %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @xdr_opaque_auth(i32* %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %1
  %31 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @XDR_GETPOS(i32* %33)
  %35 = load %struct.audata*, %struct.audata** %5, align 8
  %36 = getelementptr inbounds %struct.audata, %struct.audata* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @XDR_DESTROY(i32* %38)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_4__*) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_opaque_auth(i32*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
