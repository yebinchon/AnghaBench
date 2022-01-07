; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass2.c_report_failed_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass2.c_report_failed_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_MESSAGE_ERROR = common dso_local global i32 0, align 4
@GTK_BUTTONS_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Could not grab %s. A malicious client may be eavesdropping on your session.\00", align 1
@GTK_WIN_POS_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @report_failed_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_failed_grab(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @GTK_WINDOW(i32* %6)
  %8 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %9 = load i32, i32* @GTK_BUTTONS_CLOSE, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @gtk_message_dialog_new(i32 %7, i32 0, i32 %8, i32 %9, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GTK_WINDOW(i32* %12)
  %14 = load i32, i32* @GTK_WIN_POS_CENTER, align 4
  %15 = call i32 @gtk_window_set_position(i32 %13, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @GTK_DIALOG(i32* %16)
  %18 = call i32 @gtk_dialog_run(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @gtk_widget_destroy(i32* %19)
  ret void
}

declare dso_local i32* @gtk_message_dialog_new(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @gtk_window_set_position(i32, i32) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
