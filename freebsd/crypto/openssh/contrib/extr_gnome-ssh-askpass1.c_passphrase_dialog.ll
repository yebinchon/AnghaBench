; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass1.c_passphrase_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/contrib/extr_gnome-ssh-askpass1.c_passphrase_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"GNOME_SSH_ASKPASS_GRAB_SERVER\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GNOME_SSH_ASKPASS_GRAB_POINTER\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"OpenSSH\00", align 1
@GNOME_STOCK_BUTTON_OK = common dso_local global i32 0, align 4
@GNOME_STOCK_BUTTON_CANCEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@GTK_WINDOW_POPUP = common dso_local global i32 0, align 4
@GTK_WIN_POS_CENTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GNOME_PAD = common dso_local global i32 0, align 4
@GDK_CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @passphrase_dialog(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %3, align 8
  %13 = call i32* @getenv(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = call i32* @getenv(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @GNOME_STOCK_BUTTON_OK, align 4
  %20 = load i32, i32* @GNOME_STOCK_BUTTON_CANCEL, align 4
  %21 = call %struct.TYPE_19__* @gnome_dialog_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20, i32* null)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %10, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8** @g_strsplit(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i8** %23, i8*** %5, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct.TYPE_19__* @gtk_label_new(i8* %39)
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %12, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %42 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %41)
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GTK_BOX(i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @gtk_box_pack_start(i32 %45, %struct.TYPE_19__* %46, i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %1
  %55 = call %struct.TYPE_19__* (...) @gtk_entry_new()
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %11, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %57 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %56)
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GTK_BOX(i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @gtk_box_pack_start(i32 %60, %struct.TYPE_19__* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = call i32 @GTK_ENTRY(%struct.TYPE_19__* %65)
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @gtk_entry_set_visibility(i32 %66, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = call i32 @gtk_widget_grab_focus(%struct.TYPE_19__* %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = call i32 @GTK_OBJECT(%struct.TYPE_19__* %71)
  %73 = load i32, i32* @GTK_WINDOW_POPUP, align 4
  %74 = call i32 @gtk_object_set(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32* null)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %75)
  %77 = call i32 @gnome_dialog_set_default(%struct.TYPE_20__* %76, i32 0)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = call i32 @GTK_WINDOW(%struct.TYPE_19__* %78)
  %80 = load i32, i32* @GTK_WIN_POS_CENTER, align 4
  %81 = call i32 @gtk_window_set_position(i32 %79, i32 %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %83 = call i32 @GTK_WINDOW(%struct.TYPE_19__* %82)
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @gtk_window_set_policy(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %89 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %88)
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i32 @gnome_dialog_close_hides(%struct.TYPE_20__* %89, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %92)
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @GTK_CONTAINER(i32 %95)
  %97 = load i32, i32* @GNOME_PAD, align 4
  %98 = call i32 @gtk_container_set_border_width(i32 %96, i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %100 = call i32 @gtk_widget_show_all(%struct.TYPE_19__* %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %54
  %104 = call i32 (...) @GDK_DISPLAY()
  %105 = call i32 @XGrabServer(i32 %104)
  br label %106

106:                                              ; preds = %103, %54
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %115 = call i64 @gdk_pointer_grab(i32 %112, i32 %113, i32 0, i32* null, i32* null, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %178

118:                                              ; preds = %109, %106
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %124 = call i64 @gdk_keyboard_grab(i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %175

127:                                              ; preds = %118
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %129 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = call i32 @GTK_EDITABLE(%struct.TYPE_19__* %130)
  %132 = call i32 @gnome_dialog_editable_enters(%struct.TYPE_20__* %129, i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %134 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %133)
  %135 = call i32 @gnome_dialog_run(%struct.TYPE_20__* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = call i32 (...) @GDK_DISPLAY()
  %140 = call i32 @XUngrabServer(i32 %139)
  br label %141

141:                                              ; preds = %138, %127
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %146 = call i32 @gdk_pointer_ungrab(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %149 = call i32 @gdk_keyboard_ungrab(i32 %148)
  %150 = call i32 (...) @gdk_flush()
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %152 = call i32 @GTK_ENTRY(%struct.TYPE_19__* %151)
  %153 = call i8* @gtk_entry_get_text(i32 %152)
  store i8* %153, i8** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @puts(i8* %157)
  br label %159

159:                                              ; preds = %156, %147
  %160 = load i8*, i8** %4, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = call i32 @memset(i8* %160, i8 signext 0, i32 %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %165 = call i32 @GTK_ENTRY(%struct.TYPE_19__* %164)
  %166 = load i8*, i8** %4, align 8
  %167 = call i32 @gtk_entry_set_text(i32 %165, i8* %166)
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %169 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %168)
  %170 = call i32 @gnome_dialog_close(%struct.TYPE_20__* %169)
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 0, i32 -1
  store i32 %174, i32* %2, align 4
  br label %189

175:                                              ; preds = %126
  %176 = load i32, i32* @GDK_CURRENT_TIME, align 4
  %177 = call i32 @gdk_pointer_ungrab(i32 %176)
  br label %178

178:                                              ; preds = %175, %117
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = call i32 (...) @GDK_DISPLAY()
  %183 = call i32 @XUngrabServer(i32 %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %186 = call %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__* %185)
  %187 = call i32 @gnome_dialog_close(%struct.TYPE_20__* %186)
  %188 = call i32 (...) @report_failed_grab()
  store i32 -1, i32* %2, align 4
  br label %189

189:                                              ; preds = %184, %159
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local %struct.TYPE_19__* @gnome_dialog_new(i8*, i32, i32, i32*) #1

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32) #1

declare dso_local %struct.TYPE_20__* @GNOME_DIALOG(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @gtk_entry_new(...) #1

declare dso_local i32 @gtk_entry_set_visibility(i32, i32) #1

declare dso_local i32 @GTK_ENTRY(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_widget_grab_focus(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_object_set(i32, i8*, i32, i32*) #1

declare dso_local i32 @GTK_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @gnome_dialog_set_default(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @gtk_window_set_position(i32, i32) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_19__*) #1

declare dso_local i32 @gtk_window_set_policy(i32, i32, i32, i32) #1

declare dso_local i32 @gnome_dialog_close_hides(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32) #1

declare dso_local i32 @gtk_widget_show_all(%struct.TYPE_19__*) #1

declare dso_local i32 @XGrabServer(i32) #1

declare dso_local i32 @GDK_DISPLAY(...) #1

declare dso_local i64 @gdk_pointer_grab(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @gdk_keyboard_grab(i32, i32, i32) #1

declare dso_local i32 @gnome_dialog_editable_enters(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @GTK_EDITABLE(%struct.TYPE_19__*) #1

declare dso_local i32 @gnome_dialog_run(%struct.TYPE_20__*) #1

declare dso_local i32 @XUngrabServer(i32) #1

declare dso_local i32 @gdk_pointer_ungrab(i32) #1

declare dso_local i32 @gdk_keyboard_ungrab(i32) #1

declare dso_local i32 @gdk_flush(...) #1

declare dso_local i8* @gtk_entry_get_text(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @gnome_dialog_close(%struct.TYPE_20__*) #1

declare dso_local i32 @report_failed_grab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
