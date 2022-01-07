; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i32, i32, i8* }

@P2P_ATTR_CHANNEL_LIST = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"P2P: * Channel List\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_channel_list(%struct.wpabuf* %0, i8* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.p2p_reg_class*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = load i32, i32* @P2P_ATTR_CHANNEL_LIST, align 4
  %12 = call i32 @wpabuf_put_u8(%struct.wpabuf* %10, i32 %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = call i32* @wpabuf_put(%struct.wpabuf* %13, i32 2)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @wpabuf_put_data(%struct.wpabuf* %15, i8* %16, i32 3)
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %21 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %26 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %25, i32 0, i32 1
  %27 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %27, i64 %28
  store %struct.p2p_reg_class* %29, %struct.p2p_reg_class** %9, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %32 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wpabuf_put_u8(%struct.wpabuf* %30, i32 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %37 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %35, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %42 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %9, align 8
  %45 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wpabuf_put_data(%struct.wpabuf* %40, i8* %43, i32 %46)
  br label %48

48:                                               ; preds = %24
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %18

51:                                               ; preds = %18
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = call i32* @wpabuf_put(%struct.wpabuf* %53, i32 0)
  %55 = load i32*, i32** %7, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = sub nsw i64 %59, 2
  %61 = trunc i64 %60 to i32
  %62 = call i32 @WPA_PUT_LE16(i32* %52, i32 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i32* @wpabuf_put(%struct.wpabuf* %66, i32 0)
  %68 = load i32*, i32** %7, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = sub nsw i64 %72, 2
  %74 = trunc i64 %73 to i32
  %75 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %65, i32 %74)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
