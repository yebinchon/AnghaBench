; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_be_pair_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_be_pair_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { %struct.bufferevent_pair* }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_pair_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pair_enable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.bufferevent_pair*, align 8
  %6 = alloca %struct.bufferevent_pair*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %7)
  store %struct.bufferevent_pair* %8, %struct.bufferevent_pair** %5, align 8
  %9 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %5, align 8
  %10 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %9, i32 0, i32 0
  %11 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %10, align 8
  store %struct.bufferevent_pair* %11, %struct.bufferevent_pair** %6, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = call i32 @incref_and_lock(%struct.bufferevent* %12)
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @EV_READ, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %22 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i16, i16* %4, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @EV_WRITE, align 2
  %27 = sext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %32 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @evbuffer_get_length(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %38 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %37)
  br label %39

39:                                               ; preds = %36, %30, %23
  %40 = load i16, i16* %4, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @EV_READ, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %48 = icmp ne %struct.bufferevent_pair* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %51 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %5, align 8
  %52 = call i64 @be_pair_wants_to_talk(%struct.bufferevent_pair* %50, %struct.bufferevent_pair* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %56 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %55)
  %57 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %58 = call i32 @be_pair_transfer(%struct.bufferevent* %56, %struct.bufferevent* %57, i32 0)
  br label %59

59:                                               ; preds = %54, %49, %46, %39
  %60 = load i16, i16* %4, align 2
  %61 = sext i16 %60 to i32
  %62 = load i16, i16* @EV_WRITE, align 2
  %63 = sext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %68 = icmp ne %struct.bufferevent_pair* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %5, align 8
  %71 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %72 = call i64 @be_pair_wants_to_talk(%struct.bufferevent_pair* %70, %struct.bufferevent_pair* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %76 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %6, align 8
  %77 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %76)
  %78 = call i32 @be_pair_transfer(%struct.bufferevent* %75, %struct.bufferevent* %77, i32 0)
  br label %79

79:                                               ; preds = %74, %69, %66, %59
  %80 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %81 = call i32 @decref_and_unlock(%struct.bufferevent* %80)
  ret i32 0
}

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @incref_and_lock(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i64 @be_pair_wants_to_talk(%struct.bufferevent_pair*, %struct.bufferevent_pair*) #1

declare dso_local i32 @be_pair_transfer(%struct.bufferevent*, %struct.bufferevent*, i32) #1

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_pair*) #1

declare dso_local i32 @decref_and_unlock(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
