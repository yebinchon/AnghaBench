; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass1.c_report_failed_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass1.c_report_failed_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [91 x i8] c"Could not grab keyboard or mouse.\0AA malicious client may be eavesdropping on your session.\00", align 1
@GNOME_MESSAGE_BOX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@GTK_WIN_POS_CENTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@GTK_WINDOW_POPUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_failed_grab() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @GNOME_MESSAGE_BOX_ERROR, align 4
  %3 = call i32* @gnome_message_box_new(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @GTK_WINDOW(i32* %4)
  %6 = load i32, i32* @GTK_WIN_POS_CENTER, align 4
  %7 = call i32 @gtk_window_set_position(i32 %5, i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @GTK_OBJECT(i32* %8)
  %10 = load i32, i32* @GTK_WINDOW_POPUP, align 4
  %11 = call i32 @gtk_object_set(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32* null)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @GNOME_DIALOG(i32* %12)
  %14 = call i32 @gnome_dialog_run_and_close(i32 %13)
  ret void
}

declare dso_local i32* @gnome_message_box_new(i8*, i32, i8*, i32*) #1

declare dso_local i32 @gtk_window_set_position(i32, i32) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @gtk_object_set(i32, i8*, i32, i32*) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @gnome_dialog_run_and_close(i32) #1

declare dso_local i32 @GNOME_DIALOG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
